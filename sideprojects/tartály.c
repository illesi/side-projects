#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
/* Labor, 1 h�t */

int main(void) {
	double sugar;
	printf("Tartaly festese \n");
	printf("Milyen magas? ");
    scanf("%lf", &magassag);
    printf("Mennyi az �tm�r�je? ");
    scanf("%lf", &atmero);
    
    printf("Ennyi doboz fest�k kell: %f.\n",
           2*(atmero/2)*3.1416, 2*(atmero/2)*3.1416*magassag);
	return 0;
}
