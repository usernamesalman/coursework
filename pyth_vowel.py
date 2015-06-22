#4.fun() to print the given character is a vowel or consonant

def char(str):
    if(str[0]=='a' or str[0]=='A' or
        str[0]=='e' or str[0]=='E' or
       str[0]=='i' or str[0]=='I' or
        str[0]=='o' or str[0]=='O' or
        str[0]=='u' or str[0]=='U'):
        return 'vowel'
    elif(str[0]=='b' or str[0]=='c' or str[0]=='d' or str[0]=='f' or str[0]=='g' or str[0]=='h' or str[0]=='i' or str[0]=='j' or str[0]=='k' or
         str[0]=='l' or str[0]=='m' or str[0]=='n' or str[0]=='p' or str[0]=='q' or str[0]=='r' or str[0]=='s' or str[0]=='t' or str[0]=='v' or
         str[0]=='w' or str[0]=='x' or str[0]=='y' or str[0]=='z' or str[0]=='B' or str[0]=='C' or str[0]=='D' or str[0]=='F' or str[0]=='G' or
         str[0]=='H' or str[0]=='I' or str[0]=='J' or str[0]=='K' or str[0]=='L' or str[0]=='M' or str[0]=='N' or str[0]=='P' or str[0]=='Q' or
         str[0]=='R' or str[0]=='S' or str[0]=='T' or str[0]=='V' or
         str[0]=='W' or str[0]=='X' or str[0]=='Y' or str[0]=='Z'): 
        return 'consonant'
print char('o')
