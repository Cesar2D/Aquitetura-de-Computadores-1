def dbinEval(bin1, operator, bin2):
    if operator == "==":
        if(bin1 == bin2):
            return "O primeiro valor e igual ao segundo.";
        else:
            return "O primeiro valor e diferente do segundo."
    elif operator == "!=":
        if(bin1 != bin2):
            return "O primeiro valor e diferente do segundo.";
        else:
            return "O primeiro valor e igual ao segundo.";
    elif operator == ">":
        if(bin1 > bin2):
            return "O primeiro valor e maior que o segundo.";
        else:
            return "O segundo valor e maior que o primeiro.";
    elif operator == "<":
        if(bin1 < bin2):
            return "O primeiro valor e menor que o segundo.";
        else:
            return "O segundo valor e menor que o primeiro.";
    elif operator == ">=":
        if(bin1 >= bin2):
            return "O primeiro valor e maior ou igual ao segundo.";
        else:
            return "O primeiro valor e menor que o segundo.";
    elif operator == "<=":
        if(bin1 <= bin2):
            return "O primeiro valor e menor ou igual ao segundo.";
        else:
            return "O primeiro valor e maior que o segundo";

def main():
    num1 = input("Digite o primeiro valor (em binario): ");
    operator = input("Digite o operador (==, !=, >, <, >=, <=): ");
    num2 = input("Digite o segundo valor (em binario): ");
    
    print(dbinEval(num1, operator, num2));

if __name__ == "__main__":
    main();
print("Aperte <Enter> para continuar.");
input();