#ifdef HAVE_CONFIG_H
#	include "config.h"
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "gd.h"

/* A neat little utility which adds freetype text to
 * existing JPEG images. Type annotate -h for instructions.
 * Thanks to Joel Dubiner for supporting this work. -TBB
 */

enum { left, center, right };

