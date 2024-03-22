import library.MyIO;
import java.math.BigInteger;

class Exercicio04c {
    /*
     * Function to operate value
     * 
     * @param x, op, y, base - x is the frist value, op is the operator to be used,
     * y is the second value, base is the base to be used
     * 
     * @return result - value operated end converted to the base
     */
    public static String baseEval(String x, String op, String y, int base) {

        // object creation
        BigInteger numX = new BigInteger(x, base);
        BigInteger numY = new BigInteger(y, base);

        // object creation (result)
        BigInteger result;

        // test to check which operator to use
        if (op.equals("-")) { // if "-"

            // function call to subtract the value x to the y value
            result = numX.subtract(numY);
        } else if (op.equals("+")) { // if "+"

            // function call to add the x value to the y value
            result = numX.add(numY);
        } else if (op.equals("*")) { // if "*"

            // function call to multiply the x value to the y value
            result = numX.multiply(numY);
        } else if (op.equals("/")) { // if "/"

            // function call to divide the x value to the y value
            result = numX.divide(numY);
        } else { // if it isn't one of the operator above

            // print to display error
            MyIO.println("Operador invalido!!");
            throw new IllegalArgumentException("Operacao nao suportada: " + op);
        } // end if

        // return result
        return result.toString(base);
    } // end baseEval()

    public static void main(String argc[]) {

        // data creation
        String x = "";
        String y = "";
        int base = 0;
        String op = "";

        // data reading
        base = MyIO.readInt("Digite a base: ");
        x = MyIO.readString("Digite o numero: ");
        op = MyIO.readString("Digite o operador: ");
        y = MyIO.readString("Digite outro numero: ");

        // method call
        String result = baseEval(x, op, y, base);

        // result print
        MyIO.print("O resultado e: " + result);
    } // end main()
} // end Exercicio04c