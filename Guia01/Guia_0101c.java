import java.util.Scanner; // inputs

/**
 * Guia_0101c
 */
public class Guia_0101c {

    /*
        Function scan in java.
     * @return value - value with the int type value
     * @param String - String that will be displayed
    */
    public static int scan(String string) {
        // data declaration
        int value = 0;

        // object creation
        Scanner read = new Scanner(System.in);

        // output mensage
        System.out.print(string);

        // receive the value from the keyboard
        value = read.nextInt();

        // return value
        return value;
    } // end scan()

    /*
        Function to convert decimal to binary
     * @param void
     * @return array - retrun a int array
    */
    public static int[] dec2bin() {

        // array declaration
        int[] array = null;
            
        // dynamic allocation
        array = new int[8];

        // variables declaration
        int x = 0; // counter
        int value = 0;

        // scan function
        value = scan("Digite o valor em Decimal [0:255]: ");

        // System.out.println("Value 1 = " + value);
        // repeat to cycle through the array
        while (x <= 7) {

            // assign the value in binary to the array
            array[x] = value % 2;

            // division to update the value
            value = value / 2;

            // System.out.println("Value = " + value);
            // System.out.println("x = " + x);
            // counter
            x = x + 1;
        } // end while

        // return the array;
        return array;
    } // end dec2bin()

    /**
        Main function
     * @param args
     */
    public static void main(String[] args) {

        // variable declaration
        int x = 0; // counter

        // dynamic allocation for the array
        int[] array = new int[8];

        // method call to convert decimal to binary and assign a new array
        array = dec2bin();

        // assignment to go backwards
        x = 7;

        // repeat to cycle througj the array
        while (x >= 0) {
           
            // print the value
            System.out.print(array[x]);

            // counter
            x = x - 1;
        } // end while

        // print to format
        System.out.print("\n");

    } // end main()
} // end Guia_0101c class