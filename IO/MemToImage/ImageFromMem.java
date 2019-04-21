import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import javax.imageio.ImageIO;

public class ImageFromMem {

	public static void main(String[] args) {

		if(args.length != 1){
			System.err.println("Enter the name of the mem file as arg[0]");
			return;
		}

		File file = new File(args[0]);

		try {

			BufferedReader br = new BufferedReader(new FileReader(file));

			BufferedImage outImage = new BufferedImage(28, 28, 10);

			//String st;
			//while ((st = br.readLine()) != null)
				//System.out.println(st);

			FileWriter outFile = new FileWriter(new File("Image.bmp"));
			
			for (int j = 0; j < 28; j++) {
				for (int i = 0; i < 28; i++) {

					try{
						float color = Float.parseFloat( br.readLine() );

						Color pixelColor = new Color( color,color,color );

						outImage.setRGB(i, j, pixelColor.hashCode());
						
						//System.out.println( i + " " + j + " " + pixelColor.hashCode());		


					} catch (Exception e) {
						i--;
					}

				}
			}

			ImageIO.write(outImage, "BMP", new File("image.bmp"));

			outFile.close();

			br.close();

			System.out.println("DONE");

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}