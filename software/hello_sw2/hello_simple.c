/*
 * hello_simple.c
 *
 *  Created on: 24-Mar-2021
 *      Author: khyam
 */

#include "sys/alt_stdio.h"
#include "stdio.h"

int main()
{
  //alt_putstr("Hello from Nios II!\n");
printf("Hello from Nios II khyamling!\n");
  /* Event loop never exits. */
  while (1);

  return 0;
}
