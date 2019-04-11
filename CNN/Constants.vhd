PACKAGE constants IS    

-- configurations
CONSTANT outputSize: integer:=0;
CONSTANT filterSize: integer:=1;
CONSTANT inputSize: integer:=2; -- height or width size of the input image
constant configCount: integer :=3;


CONSTANT weightsBusSize: integer := 16;
CONSTANT windowBusSize: integer := 16;
constant addressSize: integer := 20; -- bits
constant maxImageSize: integer := 16; -- bits


END constants;