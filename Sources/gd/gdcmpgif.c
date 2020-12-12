#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <stdio.h>
#include <stdlib.h>
#ifndef _WIN32
#include <unistd.h> /* For unlink function */
#endif

#include "gd.h"

/* A short program which converts a .png file into a .gd file, for
	your convenience in creating images on the fly from a
	basis image that must be loaded quickly. The .gd format
	is not intended to be a general-purpose format. */

void CompareImages(char *msg, gdImagePtr im1, gdImagePtr im2);

void CompareImages(char *msg, gdImagePtr im1, gdImagePtr im2)
{
	int cmpRes;

	cmpRes = gdImageCompare(im1, im2);

	if (cmpRes & GD_CMP_IMAGE) {
		printf("%%%s: ERROR images differ: BAD\n",msg);
	} else if (cmpRes != 0) {
		printf("%%%s: WARNING images differ: WARNING - Probably OK\n",msg);
	} else {
		printf("%%%s: OK\n",msg);
		return;
	}

	if (cmpRes & (GD_CMP_SIZE_X + GD_CMP_SIZE_Y)) {
		printf("-%s: INFO image sizes differ\n",msg);
	}

	if (cmpRes & GD_CMP_NUM_COLORS) {
		printf("-%s: INFO number of palette entries differ %d Vs. %d\n",msg,
		       im1->colorsTotal, im2->colorsTotal);
	}

	if (cmpRes & GD_CMP_COLOR) {
		printf("-%s: INFO actual colours of pixels differ\n",msg);
	}
}
