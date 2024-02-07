#include <stdio.h>
#include "area.h"

int main(){

	printf("Enter a value for circle radius: ");
	double r;
	scanf("%lf",&r);
	double area;
	area = circle_area(r);
	printf("The area of circle is: %lf\n",area);
	return 0;

}
