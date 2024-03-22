import sys #library to print witouth the '\n'

def conversion(array, value):
    # counter create
    x = 0;
    
    # repetition to convert decimal to binary
    while x <= 7:
    
        # calculation for conversion
        array[x] = int(value) % 2;
    
        # value update
        value = value / 2;
    
        #counter
        x = x + 1;
        
    return array;


def print_bin(array):
    # counter assign
    x = 7;
    
    #repetition to print the binary number without the '\n'
    while x >= 0:
    
        # comand to print without the '\n'
        sys.stdout.write(str(array[x]));
    
        # counter
        x = x - 1;

def main():
    # recive value from keyboard and transform into integer
    value = int(input('Digite um numero de [0:255]: '))

    # array create
    array = [0] * 8;
    
    array = conversion(array, value);
    print_bin(array);
    
    print("\n");
    print("Aperte <Enter> para terminar");
    input();


main();

# print to format 
print('\n');