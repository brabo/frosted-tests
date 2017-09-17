/*
 *      This file is part of frosted.
 *
 *      frosted is free software: you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License version 2, as
 *      published by the Free Software Foundation.
 *
 *
 *      frosted is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License
 *      along with frosted.  If not, see <http://www.gnu.org/licenses/>.
 *
 *      Authors: brabo
 *
 */

#include <stdlib.h>
#include "test.h"

size_t sizes[] = { 1, 64, 128, 256, 512, 1024, 99999999999 };

int mem_tests(void)
{
 	void *ret;
 	int i;
 	char buf[64];

 	for (i = 0; i < 7; i++) {
 		ret = malloc(sizes[i] * sizeof (char));
 		snprintf(buf, sizeof (buf), "malloc test #%d", (i + 1));
 		err_fail_if((ret == NULL), buf);
 	}

	return 0;
}

