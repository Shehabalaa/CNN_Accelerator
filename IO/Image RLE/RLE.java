
public class RLE {

	public static void main(String[] args) {

		if(args.length < 1)
		{
			System.out.println("You entered " + args.length +" args");
			System.out.println("The args should be : \nJavaFileName ImageName.bmb");

			System.out.println("OR  args should be : \nJavaFileName \"ImageName\" \n");

			return;
		}

		ImageEncoder iEncoder = new ImageEncoder();

		//Remove Extension
		String extension = args[0].substring(args[0].length()-4,args[0].length());
		if(extension.equals(".bmp")){
			args[0] = args[0].substring(0,args[0].length()-4);
		}

		iEncoder.RLE_Bmp(args[0]);

		System.out.println("Finished");

	}

}
