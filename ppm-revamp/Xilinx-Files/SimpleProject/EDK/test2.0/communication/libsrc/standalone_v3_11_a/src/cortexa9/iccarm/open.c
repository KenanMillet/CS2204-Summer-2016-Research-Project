/*******************
 *
 * Copyright 1998-2010 IAR Systems AB.  
 *
 * This is a template implementation of the "__open" function used by
 * the standard library.  Replace it with a system-specific
 * implementation.
 *
 * The "__open" function opens the file named "filename" as specified
 * by "mode".  "mode" & _LLIO_RDWRMASK specifies the basic file type:
 * _LLIO_RDONLY, _LLIO_WRONLY, and _LLIO_RDWR for read only, write only, and
 * read write, respectively.  Handle the rest of the _LLIO_xxx flags as
 * described in the code below.
 *
 ********************/

#include <yfuns.h>

_STD_BEGIN

#pragma module_name = "?__open"

#pragma diag_suppress = Pe826

int __open(const char * filename, int mode)
{
return 0;
}

_STD_END
