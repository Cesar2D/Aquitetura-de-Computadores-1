import library.MyIO;

public class Exercicio03c {
    
    /**
     * @param base - value of base to be converted
     * @param value - value to be convert
     * @return result - string value converted
     */
    public static String dbin2base(int base, String value){
        int x = value.length() - 1; // string size -1
        String result = ""; // string to store the result value
        int y = 0; // counter position
        int temp = 0; // temporary variable

        // repetition to cyvle through the length of the string
        while(x >= 0){
            
            // test to check if there is the number '1' in position x
            if(value.charAt(x) == '1'){

                // calculation for conversion
                temp = (int) (temp + Math.pow(2, y));
                // MyIO.println("Result dentro if = " + temp);
            } // end if
            x = x - 1; // move to descending position
            y = y + 1; // move to ascending position
        }
        
        // repetition to convert the bases into string
        while(temp > 0){

            // concatenation with the string
            result = temp % base + result;

            // movement
            temp = temp / base;
        }

        // return result
        return result;
    }

    public static void main(String[] args) {
        int base = 0;
        String value = "";
        String result = "";
        
        MyIO.print("Digite a base(3,4,5,6,7,8..16): ");
        base = MyIO.readInt();

        MyIO.print("Digite o valor a ser convertido: ");
        value = MyIO.readLine();

        result = dbin2base(base, value);

        MyIO.println("O valor convertido na base " + base + " e: " + result);
        
    }
}
