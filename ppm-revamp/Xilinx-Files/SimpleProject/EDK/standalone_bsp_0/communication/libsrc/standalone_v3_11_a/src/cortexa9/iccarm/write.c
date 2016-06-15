/*******************
 *
 * Copyright 1998-2010 IAR Systems AB.
 *
 * This is a template implementation of the "__write" function used by
 * the standard library.  Replace it with a system-specific
 * implementation.
 *
 * The "__write" function should output "size" number of bytes from
 * "buffer" in some application-specific way.  It should return the
 * number of characters written, or _LLIO_ERROR on failure.
 *
 * If "buffer" is zero then __write should perform flushing of
 * internal buffers, if any.  In this case "handle" can be -1 to
 * indicate that all handles should be flushed.
 *
 * The template implementation below assumes that the application
 * provides the function "MyLowLevelPutchar".  It should return the
 * character written, or -1 on failure.
 *
 ********************/

#include <yfuns.h>

_STD_BEGIN

#pragma module_name = "?__write"

#if 0
/*
 * If the __write implementation uses internal buffering, uncomment
 * the following line to ensure that we are called with "buffer" as 0
 * (i.e. flush) when the application terminates.
 */

size_t __write(int handle, const unsigned char * buffer, size_t size)
{
  unsigned int volatile *uart_base = (unsigned int *)0xE0001000;
  int i;

  for (i =0; i < size;i++) {
    /* wait if TNFUL */
    while (*(uart_base + 11) & (1 << 14)) ;
    *(uart_base + 12) = buffer[i];
  }
  return 0;
}

#endif

#include "xparameters.h"
#include "xil_printf.h"

#ifdef __cplusplus
extern "C" {
	int _write (int fd, char* buf, int nbytes);
}
#endif

/*
 * write -- write bytes to the serial port. Ignore fd, since
 *          stdout and stderr are the same. Since we have no filesystem,
 *          open will only return an error.
 */
int
write (int fd, char* buf, int nbytes)

{
#ifdef STDOUT_BASEADDRESS
  int i;

  (void)fd;
  for (i = 0; i < nbytes; i++) {
    if (*(buf + i) == '\n') {
      outbyte ('\r');
    }
    outbyte (*(buf + i));
  }
  return (nbytes);
#else
  (void)fd;
  (void)buf;
  (void)nbytes;
  return 0;
#endif
}

size_t
__write (int fd, const unsigned char* buf, size_t nbytes)
{
#ifdef STDOUT_BASEADDRESS
  int i;

  (void)fd;
  for (i = 0; i < nbytes; i++) {
    if (*(buf + i) == '\n') {
      outbyte ('\r');
    }
    outbyte (*(buf + i));
  }
  return (nbytes);
#else
  (void)fd;
  (void)buf;
  (void)nbytes;
  return 0;
#endif
}

_STD_END
