#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
/* Labor, 1 hét */

int main(void) {
	double sugar;
	printf("Tartaly festese \n");
	printf("Milyen magas? ");
    scanf("%lf", &magassag);
    printf("Mennyi az átmérõje? ");
    scanf("%lf", &atmero);
    
    printf("Ennyi doboz festék kell: %f.\n",
           2*(atmero/2)*3.1416, 2*(atmero/2)*3.1416*magassag);
	return 0;
}
