'''
    function to convert binary to decimal
    @param value - binary value(str)
    @return resp - value in decimal
'''
def conversion(value):
    # data crate
    resp = 0;
    lenght = len(value) - 1;
    
    #loop to "walk" through the string
    while lenght >= 0:

        # test if has '1'
        if(value[lenght] == '1'):
            
            #conversion
            resp = resp + pow(2,lenght);
            
        # counter
        lenght = lenght - 1;

    # return resp (value already converted)
    return resp;

'''
    MAIN function
    @param - void
    @return - void
'''
def main():
    
    # keyboard reading
    value = input("Digite o valor em Binario(ate 8dig): ");
    
    # conversion
    resp = conversion(value);
    
    # result display
    print("O valor binario em decimal e: ", resp);
    
# main method call
main();
print("\n");