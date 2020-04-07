#ifdef DEBUG
#include <stdio.h>
#endif

float lose_precision() {
	return 4.4f - 3.4f;
}

int main() {
	float cat = 4.4f - 3.4f;
	#ifdef DEBUG
	float cat_ = lose_precision();
	printf("%f        %e       %x\n", lose_precision(), lose_precision(), *(int*)&(cat_));
	#endif
}
