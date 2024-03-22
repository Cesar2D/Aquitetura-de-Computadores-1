'''
    - Function to convert double to binary
    @param decNum - decimal number
    @return -  value converted to binary

'''

def double2bin(decNum):
    
    # if the number is 0, returns the same
    if(decNum == 0):
        return 0;
    
    #  separation of the integer part from the fractional part
    intPart = int(decNum); # integer
    fraPart = float(decNum) - intPart; # fractional

    # integer and fractional part in binary
    intPartBin = bin(intPart)[2:]; # integer to binary conversion
    fraPartBin = ""; # string to store the fractional part
    
    # repetition to transform the fractional number into binary
    while fraPart != 0:
        
        # calculation for conversion
        fraPart = fraPart * 2;
        
        # transforming the value into an integer to remove the number 1
        bit = int(fraPart);
        
        # concatenando a string
        fraPartBin = fraPartBin + str(bit);
        
        # removing the integer part to continue multiplication
        fraPart = fraPart - bit;
    
    # test to check if there is a fractional number
    if fraPartBin == '':
        
        # return integrt part if there is no fractional part
        return "o numero convertido e: " + intPartBin;
    # if there is a fractional part
    else:
        
        # if so, return integer part + '.' + fractional part
        return "o numero convertido e: " + intPartBin + '.' + fraPartBin;

def main():
    value_str = input("Digite um numero decimal (fracionario ou nao): ");
    
    value = float(value_str);
    
    print(double2bin(value));
    
    print("\n");
    print("Aperte <Enter> para terminar.");
    input();

if __name__ == "__main__":
    main();
print("\n");

    
        