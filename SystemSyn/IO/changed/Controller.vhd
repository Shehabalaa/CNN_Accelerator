library ieee;
use ieee.std_logic_1164.all;

--controller entity is responsible for generating the control signals and feeding them to all other modules
--is also responsible for identifying state and sending synchronization signals to cpu
--ports
--donedmafc: indicates that the fc ram was successfully written into
--donedmacnn: indicates that the cnn ram was successfully written into
--donedmaimage: indicates that the image ram was successfully written into
--intr: signal provided by cpu when placing data on the bus
--clk: the chip's clock, provided by the cpu

--loadorprocess: indicates if i'm currently loading an image/model, or i'm currently processing, provided by the cpu

--processing: indicates i'm currently processing
--zerostate: indicates whether global counter has reached zero state (inputs of this stage are done), provided by interface
--decompzerostate: indicates whether the decompressor's counter has reached zero state (run has ended)

--rst: signal for resetting the registers, used as initialization for the chip
--intrdelayed: intr signal, delayed by one cycle
--load: indicates i'm currently loading the image or model data

--busy: sent to cpu to indicate that the chip isn't ready for new inputs
--donewithphase: informs cpu that the current phase's data is successfully done writing to memory
--interfaceregenable: enables the io interface register (port)
--interfacemuxsel: io interface's mux selection bit
--interfacemuxenable: enables the io interface mux
--cnncounterenable: enables the cnn dma counter
--cnnregisterenable: enables the cnn dma register
--imagecounterenable: enables the image dma counter
--imageregisterenable: enables the image dma register
--globalcounterload: load signal of global counter
--globalcounterenable: enable signal of global counter
--tocnn: informs the cnn module to start working
--tofc: informs the fc module to start working
entity controllerio is
  generic (chipinputsize: integer :=16;
           chipoutputsize: integer :=4);
  port(
      donedmafc, donedmacnn, donedmaimage, intr, load, clk, processing, imageorcnn, 
      zerostate, decompzerostate, rst, fcramwriteold: in std_logic;
      intrdelayed, globalcounterload, imageload, imageregisterenable, imageramenable,
      cnnregisterenable, cnnramenable, fcregisterenable, fcramenable: inout std_logic;
      busy, donewithphase, interfaceregenable, interfacemuxsel, interfacemuxenable, 
      cnncounterenable, fccounterenable, decompdecrementorenable, imagecounterenable,
      globalcounterenable: out std_logic; 
	  tocnn: inout std_logic; 
	  tofc: out std_logic;
      donedecomp: inout std_logic
  );
end entity;

architecture controllerioarch of controllerio is
signal doneimage, anydone, imagelatcherd, busyffd, busyffq, imageramlatchd, cnnramlatchd, fcramlatchd, dmaimagenotdelayedorintrdelayed,
       cnnramrst, imageramrst, fcramrst, cnnload, fcload, dmaimageorintrdelayed, dmaimageorintrdelayedsq, zerostatedelayed, zerostatedelayedsq,
       intrdelayedsq, intrffd,statecounterenable, statecounterload, cnnorfc, busyrst, donedmaimagedelayed, donecnn, donecnnlatcherd, 
	   tocnncomb, delayedtocnn, delayedtocnnsq, delayedtocnncube: std_logic;
signal statecounterq, zeros: std_logic_vector(1 downto 0);
signal high: std_logic := '1';
signal notclk: std_logic;
begin
  notclk <= not clk;
  --temporary initialization values for state counter, might change if we wanna handle multiple images for single cnn
  zeros <= (others => '0');
  statecounterload <= '0';

  --image latch
  imagelatcherd <= (not imageorcnn) or doneimage;
  imagelatcher: entity work.iodffio port map(imagelatcherd, clk, rst, high, doneimage);
  
  --busy latch
  busyffd <= intr or busyffq;
  busy <= busyffq or intr or fcramenable;
  busyrst <= anydone or zerostatedelayedsq or (fcregisterenable and fcload and (not fcramenable));
  busyff: entity work.iodffio port map(busyffd, clk, busyrst, high, busyffq);

  --state counter
  statecounterenable <= imageorcnn and zerostate and anydone;
  statecounter: entity work.iocounter2 generic map(2) 
                       port map(statecounterenable, rst, notclk, statecounterq);
  cnnorfc <= statecounterq(1);

  --zerostate latch
  zerolatch: entity work.iodffio port map(zerostate, notclk, rst, high, zerostatedelayed);

  --zerostatedelayed latch
  zerodelayedlatch: entity work.iodffio port map(zerostatedelayed, notclk, rst, high, zerostatedelayedsq);

  --intr and intr delayed ff
  intrffd <= intr and (not zerostatedelayed);
  intrff1: entity work.iodffio port map(intrffd, notclk, rst, high, intrdelayed);
  intrff2: entity work.iodffio port map(intrdelayed, notclk, rst, high, intrdelayedsq);

  --image phase signals
  dmaimageorintrdelayed <= donedmaimagedelayed or intrdelayed;
  dmaimageorintrdelayedsq <= donedmaimagedelayed or intrdelayedsq;
  dmaimagenotdelayedorintrdelayed <= donedmaimage or intrdelayed;
  imageload <= load and (not imageorcnn);
  imagecounterenable <= dmaimageorintrdelayed and (not zerostate);
  imageregisterenable <= imageload and dmaimageorintrdelayedsq;
  --decompdecrementorenable <= imageload and dmaimageorintrdelayed;
  decompdecrementorenable <= imageload and dmaimagenotdelayedorintrdelayed;
  donedecomp <= donedmaimagedelayed and decompzerostate;

  --no function dff to cheat leonardo to preserve donedecomp
  --leonardopls: entity work.dff port map(donedecomp, notclk, rst, high, donedecompdelayed);

  --image done latcher
  imglatcher: entity work.iodffio port map(donedmaimage, notclk, rst, high, donedmaimagedelayed);

  --image ram enable latch
  imageramlatchd <= imageregisterenable or imageramenable;
  --imageramrst <= rst or donedmaimagedelayed;
  imageramrst <= (rst or donedmaimage) or decompzerostate;
  imageramen: entity work.iodffio port map(imageramlatchd, clk, imageramrst, high, imageramenable);

  --io interface signals
  interfacemuxenable <= load;
  interfacemuxsel <= imageorcnn;
  interfaceregenable <= load and intr and (not rst);
  globalcounterload <= intr and zerostate and (not rst);
  globalcounterenable <= (globalcounterload or anydone) and (not rst);

  --cnn signals
  cnnload <= load and imageorcnn and (not cnnorfc);
  cnncounterenable <= cnnload and donedmacnn and (not rst);
  cnnregisterenable <= cnnload and intrdelayed and (not zerostate) and (not rst);

  --cnn ram enable latch
  cnnramlatchd <= cnnregisterenable or cnnramenable;
  cnnramrst <= rst or donedmacnn;
  cnnramen: entity work.iodffio port map(cnnramlatchd, clk, cnnramrst, high, cnnramenable);

  --fc signals
  fcload <= load and imageorcnn and cnnorfc;
  fccounterenable <= fcload and donedmafc and (not rst);
  fcregisterenable <= fcload and intrdelayed and (not zerostate) and (not rst);

  --fc ram enable latch
  fcramlatchd <= fcramwriteold or fcramenable;
  fcramrst <= rst or donedmafc;
  fcramen: entity work.iodffio port map(fcramlatchd, clk, fcramrst, high, fcramenable);

  --done output signals
  --legacy line, keeping in case future problems encountered
  --anydone <= (donedmafc or donedmacnn or donedecomp) and zerostate;
  anydone <= donedmafc or donedmacnn or donedecomp;
  donewithphase <= anydone and zerostate;

  --communication signals with the other modules
  --donecnn <= doneimage and (not cnnorfc) and processing; --cnnorfc is produced form 2 bit state counter (msb)
  tofc <= statecounterq(1) and statecounterq(0) and doneimage and processing;
  donecnnlatcherd <= doneimage and (not cnnorfc) and processing;
  donecnnlatched: entity work.iodffio port map(donecnnlatcherd, notclk, rst, high, tocnncomb);
  tocnndelayer: entity work.iodffio port map(tocnncomb, notclk, rst, high, delayedtocnn);
  tocnndelayersqd: entity work.iodffio port map(delayedtocnn, notclk, rst, high, delayedtocnnsq);
  tocnndelayercubed: entity work.iodffio port map(delayedtocnn, notclk, rst, high, delayedtocnncube);
  tocnn <= (tocnncomb or delayedtocnn or delayedtocnnsq) and (not delayedtocnncube);
  --latching donecnn
  --donecnnlatcherd <= donecnn or tocnn;
  --donecnnlatched: entity work.iodffio port map(donecnnlatcherd, notclk, '0', high, tocnn);
end architecture;
