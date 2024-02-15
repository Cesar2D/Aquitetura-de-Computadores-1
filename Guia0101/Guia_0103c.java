import java.util.Scanner; // inputs

public class Guia_0103c{

    /*
        Function scan in java
     * @return value - value with the int type value
     * @param String - String that will be displayed
     */

    public static String scan(String string){
        // data declaration
        String value = "";

        // object creation
        Scanner read = new Scanner(System.in);

        // output mensage
        System.out.print(string);

        // receive the value from the keyboard
        value = read.nextLine();

        // System.out.println("Value = " + value);
        // return value
        return value;
    } // end scan()

    /*
        Function to convert binary to decimal
     * @param value - binary value
     * @return resp - retrun a int value
    */
    public static int bin2dec(String value){

        // data declaration
        int resp = 0;
        int counter = 0;
        int length = value.length();

        // repeat to cycle through the string
        for(int x = length - 1; x >= 0; x = x - 1 ){

            // test to verify, position by position, in string if it is number '1' (chatAt(x) = check position by position of a string)
            if(value.charAt(x) == '1'){

                // if so, add the counter positions to the power of 2 raised
                resp = (int) (resp + Math.pow(2, counter));
                // System.out.println("Resp (" + x + ") = " + resp);
            }// end if

            // counter
            counter = counter + 1;
        } // end for

        // return value
        return resp;
    } // end  bin2dec()

    /**
     * @param args
     */
    public static void main(String[] args) {

        // data declaration
        String binary = "";
        int decimal = 0;

        // receive binary value from keyboard
        binary = scan("Digite o valor em binário(no maximo 8 digitos): ");

        // convert the value
        decimal = bin2dec(binary);

        // print the result
        System.out.println("O valor em Binario e: " + binary + ". O valor em Decimal e: " + decimal);
    } // end main()

} // end class Guia_0103c