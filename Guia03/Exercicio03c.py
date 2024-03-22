def sbin2dec(x):

    # test to verify if the value is negative ( if has the number 1 in the first position)
    isNeg = x[0] == '1';

    # remove the 1 in the first position
    if isNeg:
        # removing the value and tr
        comp = ''.join('1' if bit == '0' else '0' for bit in x[1:]);
        dec = -(int(comp, 2) + 1);
    else:
        # if positive, convert the value
        dec = int(x, 2);

    # return the result
    return dec;

def main():

    # data imput
    bnum = input("Digite o valor em binario: ");

    # method call
    dnum = sbin2dec(bnum);

    #print the result
    print("Numero decimal: ", dnum);

# main method call
if __name__ == "__main__":
    main();
print("\n");