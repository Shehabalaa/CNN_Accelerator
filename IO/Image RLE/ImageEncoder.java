import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;

import javax.imageio.ImageIO;


public class ImageEncoder{

    public ImageEncoder(){        
    }

    public String PadStingWithZerosLeft(String number,int length){
		int sLen = number.length();
		
		if(length < sLen)
			System.err.println("Length greater than required");
		
		for (int i = sLen; i < length; i++) {
			number = '0' + number;
		}
		return number;
	}

    public void RLE_Bmp(String name) {
		
		File bmpFile = new File(name + ".bmp");

        File RLE_File = new File(name  + ".txt");
		
		String outFileText = "";
		int numberOfWords = 0;

		try {
			
            BufferedImage image = ImageIO.read(bmpFile);

			BufferedImage newImage = new BufferedImage(image.getWidth(), image.getHeight(), image.getType());

			FileWriter outFile = new FileWriter(RLE_File);

			boolean whiteString = false;
			int whiteStringLength = 0;
			int whiteStringStart = 0;
			
			for (int j = 0; j < image.getHeight(); j++) {
				for (int i = 0; i < image.getWidth(); i++) {
					String binPixel = Integer.toBinaryString((image.getRGB(i, j)));
					binPixel = binPixel.substring(8, 32);

					int redValue = Integer.parseInt(binPixel.substring(0,8), 2);
					
					Color pixelColor = new Color(image.getRGB(i, j));				
					redValue = pixelColor.getRed();
					
					int pixelNew;
					
					if(redValue > 128){
						redValue = 255;
						
						pixelNew = 16777215;	//eight ones in binary
						
						if(!whiteString){
							whiteStringLength = 0;
							
							String binWSS = Integer.toBinaryString(whiteStringStart);
							binWSS = PadStingWithZerosLeft(binWSS, 10);
							//outFile.write(binWSS);
							outFileText += binWSS;
						}
						whiteString = true;
						whiteStringLength++;

						if(whiteStringLength == 63){
							if(whiteString){	
								String binWSL =  Integer.toBinaryString(whiteStringLength);
								binWSL = PadStingWithZerosLeft(binWSL, 6);
								
								numberOfWords++;
								outFileText += binWSL + System.lineSeparator();
								//outFile.write(binWSL + System.lineSeparator());
							}
							whiteString = false;
						}
					}
					else{
						redValue = 0;
						
						pixelNew = 0;
						
						if(whiteString){

							if(whiteStringLength > 63){
								System.err.println("length of run is bigger than > 63");
							}

							String binWSL =  Integer.toBinaryString(whiteStringLength);
							binWSL = PadStingWithZerosLeft(binWSL, 6);
							
							numberOfWords++;
							outFileText += binWSL + System.lineSeparator();
							//outFile.write(binWSL + System.lineSeparator());
						}
						whiteString = false;
					}

					whiteStringStart++;
					newImage.setRGB(i, j, pixelNew);
				
				}
			}
			
			outFile.write( PadStingWithZerosLeft(Integer.toBinaryString(numberOfWords) , 16) + System.lineSeparator());

			outFile.write(outFileText);

			outFile.close();
			

			ImageIO.write(newImage, "BMP", new File(name + "_New.bmp"));

			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}