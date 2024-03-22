def dbase2base(base1, base2, value):
    temp = int(value, base1);
    
    result = "";
    
    while temp > 0:
        temp2 = temp % base2;
        result = str(temp2) + result;
        temp = temp // base2;
        
    return result;

def main():
    base1 = int(input("Digite o valor da 1 base o qual esta o numero: "));
    base2 = int(input("Digite a base a qual queira converter: "));
    value = input("Digite o valor na 1 base: ");
    result = "";
    result = dbase2base(base1, base2, value);
    
    print(result);

if __name__ == "__main__":
    main();
