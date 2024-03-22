import library.MyIO;

class Exercicio01c {

    /*
     * Function to do 2's complement
     * 
     * @param nbits, bits
     */
    public static char[] C1(String bits, int nbits) {

        // dynamic allocation of result to final return
        char[] result = new char[nbits];

        // repeat to move all positions
        for (int i = 0; i < bits.length(); i = i + 1) {
            if (bits.charAt(i) == '1') { // exchange of numbers
                result[i] = '0'; // if is 1 - result[i] = '0'
            } else {
                result[i] = '1'; // if is 0 - result[i] = '1'
            } // end if
        }

        // return result
        return result;

    } // end C1()
    /*
     * Function for 2's complement
     * 
     * @param bits, nbits - the bits to be checked
     * 
     * @return result - the string char already complemented
     */

    public static char[] C2(char[] bits, int nbits) {
        // MyIO.println("Lenght = " + nbits);

        // result space allocation
        char[] result = new char[nbits];

        // if the next value increases by 1
        boolean more1 = true;

        // repetition to check the last char end the penutilmate char if it's 1 at the
        // end
        for (int i = nbits - 1; i > 0; i = i - 1) {
            // frist test, to check if the last one is 1
            if (bits[i] == '1' && more1) {
                result[i] = '0';
            } else if (bits[i] == '0' && more1) { // second test to check if the previous one is zero
                result[i] = '1';
                more1 = false;
            } else { // if "more1" is false
                result[i] = bits[i];
            } // end if
        } // end for

        // return result
        return result;
    } // end C2()
    /* --------------- main --------------- */

    public static void main(String args[]) {

        // data declaration
        int nbits = 0; // bit numbers
        String bits = ""; // the bits themselves
        int choice = 0; // user choice

        while (choice != 3) {

            // choice data entry
            choice = MyIO.readInt("Escolha uma opcao(1 - Complemento de 1; 2 - Complemento de 2; 3 - Sair): ");

            // switch-case to choose ehich case to use
            switch (choice) {
                case 1:
                    // user data entry
                    nbits = MyIO.readInt("Digite o numero de bits: ");
                    bits = MyIO.readString("Digite os bits: ");

                    // result declaration
                    char[] resultC1 = new char[nbits];

                    // method call
                    resultC1 = C1(bits, nbits);

                    // display to the user
                    MyIO.print("O complemento de um do numero e: ");
                    for (int i = 0; i < nbits; i = i + 1) {
                        MyIO.print(resultC1[i]);
                    } // end for
                    MyIO.print("\n");

                    break; // end case 1

                case 2:
                    // user data entry
                    nbits = MyIO.readInt("Digite o numero de bits: ");
                    bits = MyIO.readString("Digite os bits: ");

                    // result declaration
                    char[] resultC2 = new char[nbits];

                    // method call
                    resultC2 = C1(bits, nbits);
                    resultC2 = C2(resultC2, nbits);

                    // display to the user
                    MyIO.print("O complemento de dois do numero e: ");
                    for (int i = 0; i < nbits; i = i + 1) {
                        MyIO.print(resultC2[i]);
                    } // end for
                    MyIO.print("\n");

                    break; // end case 2

                case 3: // do nothing
                    break;
                default:
                    MyIO.print("Escolha invalida.");
                    break;
            } // end switch
        } // end while
    } // end main()

} // end Exercicio01c