# erro que não consegui resolver


def hex2ascii(hex_str):
    """
        convert hexadecimal to ASCII

    Args:
        hex_str (string): string to be converted

    Returns:
        string: converted string
    """
    
    ascii_str = "";
    
    # loop that cycles every two char
    for i in range(0, len(hex_str), 2):
        
        # gets the ASCII character corresponding to the two hexadecimal digits
        ascii_char = char(int(hex_str[i:i+2], 16));
        
        # adds the ASCII character to the string
        ascii_str = ascii_str + ascii_char;
    
    # return string
    return ascii_str;

def ascii2hex(ascii_str):
    """
        convert ASCII to hexadecimal

    Args:
        ascii_str (string): string to be converted

    Returns:
        string: converted string
    """
    hex_str = "";
    
    # loop to go through the entire string
    for char in ascii_str:
        
        # gets the hexadecimal value corresponding to the ASCII character
        hex_value = hex(ord(char))[2:]; # remove prefix '0x'
        
        # add hexadecimal value to string
        hex_str = hex_str + hex_value;
        
    # returm str
    return hex_str;

"""
    main fuction
    
    Args: 
        void
        
    Returns:
        void
"""
def main():
    
    # keyboard reading
    choice = input("Escolha a conversao: \n1. Hexadecimal para ASCII \n2 ASCII para Hexadecimal\n");
    
    # test to choose which function to use
    # 1 - Hexadecimal to ASCII
    if choice == "1":
        hex_str = input("Digite o valor Hexadecimal: ");
        ascii_str = hex2ascii(hex_str)
        print("ASCII: ", ascii_str);
     # 2 - ASCII to Hexadecimal
    elif choice == "2":
        ascii_str = input("Digite o valor ASCII: ");
        hex_str = ascii2hex(ascii_str);
        print("Hexadecimal: ", hex_str);
    # if you choose an invalid value
    else:
        print("Escolha invalida!!. Aperte <Enter> para continuar ou digite 0 para sair.");
        input();

# main method call
main(); 
print("\n");