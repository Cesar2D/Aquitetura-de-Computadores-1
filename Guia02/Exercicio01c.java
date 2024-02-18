import library.MyIO;

class Exercicio01c {

    /**
     * - Function to convert binary to double
     * 
     * @param value - user-entered string
     * @return result - value to be returned
     */
    public static double bin2double(String value) {

        // data creation
        double result = 0.0; // result
        int counterP = 0; // positive counter (<--'.')
        int counterN = 0; // negative counter ('.'-->)
        int pointerPos = 0; // pointer position (counter for subtraction when using numbers "before" the point ('.'<--))
        int length = value.length(); // length of value

        // MyIO.println("length = " + length);

        // setting counter size
        int z = length - 1;
        ; // movement counter
        int x = 0; // movement counter

        // repeat to find out where the point is
        while (value.charAt(z) != '.' && value.charAt(z) != ',' && z > 0) {

            // counter
            pointerPos = pointerPos + 1;

            // movement counter
            z = z - 1;
        }

        x = length - pointerPos; // size assignment to limit where the dot '.'

        if (z > 0) {

            // assignment to start with '2' raised to '1'
            counterN = 1;

            // repeat to convert fractional numbers
            while (x < length) {

                // test to see if the value '1' exists
                if (value.charAt(x) == '1') {

                    // calculation for conversion (fractional)
                    result = (double) (result + (1 / Math.pow(2, counterN)));
                    // MyIO.println("Dentro do primeiro if = " + result);
                }
                // movement counter
                x = x + 1;

                // counter for power (position for conversion)
                counterN = counterN + 1;
            }
        }

        // MyIO.println("After while = " + result);

        // repetition to "walk" in the string
        for (int y = length - counterN - 1; y >= 0; y = y - 1) {

            // MyIO.println("String = " + value.charAt(y));
            // if has '1'
            if (value.charAt(y) == '1') {

                // binary to decimal conversion (integer)
                result = (double) (result + Math.pow(2, counterP));
                // MyIO.println("Dentro do segundo if = " + result);
            } // end if

            // counter for power
            counterP = counterP + 1;
        } // end for

        // return result (in double)
        return result;
    } // end bin2double()

    /*----- main ----- */
    public static void main(String[] args) {
        String value = "";
        double print = 0.0;

        value = MyIO.readLine("Digite o valor a ser convertido: ");

        print = bin2double(value);

        MyIO.println("O valor convertido e: " + print);

    } // end main()

} // end class Exercicio01c