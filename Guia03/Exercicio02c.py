
"""
    Function to convert string to list
    @param string: string to be convert
    @return: converted value
"""
def convStoC(string):

    # converting string to a list
    result = list(string);

    # return result
    return result;


def c1(nbits, value):
    
    # setting a size
    lenght = nbits - 1;

    # repeat to scroll through the list
    while lenght >= 0:

        # test to  make 1's complement
        if value[lenght] == '1':
            value[lenght] = '0';
        else:
            value[lenght] = '1';
        lenght = lenght - 1;

    # returning and converting from list to string
    return ''.join(value);

def c2(nbits, value):

    # setting a size
    lenght = nbits - 1;

    # increases power by 1 more
    cont1 = True;

    # converting the result into
    result = convStoC(value);

    # method c1 called to convert frist to only then do 2's complement
    value = c1(nbits, value);

    # repeat to scroll through the value
    while lenght >= 0:

        # test to  make 2's complement
        if value[lenght] == '1' and cont1:
            result[lenght] = '0';
        elif value[lenght] == '0' and cont1:
            result[lenght] = '1';
            cont1 = False;
        else:
            result[lenght] = value[lenght];
        
        # movement around the value
        lenght = lenght - 1;

    # returning and converting from list to string
    return ''.join(result);

""" main() <---------------------||"""
def main():

    # keyboard data entry
    nbits = int(input("Digite o tamanho: "));
    value = input("Digite o valor em binario: ");

    # printing the result
    print("O complemento de 1 e: " + c1(nbits, convStoC(value)));
    print("O complemento de 2 e: " + c2(nbits, convStoC(value)));

# main method call
if __name__ == "__main__":
    main();

# formatting
print("\n");
