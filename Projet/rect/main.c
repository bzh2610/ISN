#include <stdio.h>
#include <stdlib.h>

rect(int x1, int y1, int width, int height){
int ligne=0;

for(int a=1; a<=128; a++){

    if(a-(ligne*16) < x1){ //LEFT
        printf("* ");
    }

    else if(a-(ligne*16)+1 > x1+width){ //RIGHT
        printf("* ");
    }

    else if(ligne+1 < y1){ //TOP
        printf("* ");
    }

    else if(ligne+1 >= y1+height){ //BOTTOM
        printf("* ");
    }

    else{
        printf("o ");
    }

    if(a%16 == 0){
        ligne++;
        printf("\n");
    }
}

}


int main()
{
    rect(3,3,5,4);
    return 0;
}
