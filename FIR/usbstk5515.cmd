/******************************************************************************/
/* USBSTK5515.CMD - COMMAND FILE FOR LINKING ASM PROGRAMS                     */
/*                                                                            */
/*                                                                            */
/* Description: This file is a sample command file that can be used for       */
/*              linking programs built with the assembler.  Use it as a       */
/*              guideline; you  may want to change the allocation scheme      */
/*              according to the size of your program and the memory layout   */
/*              of your target system.                                        */
/*                                                                            */
/*                                                                            */
/******************************************************************************/

/* SPECIFY THE SYSTEM MEMORY MAP */

MEMORY
{
 PAGE 0:  /* ---- Unified Program/Data Address Space ---- */

  MMR    (RWIX): origin = 0x000000, length = 0x0000c0  /* MMRs */
  DARAM0 (RWIX): origin = 0x0000c0, length = 0x00ff40  /*  64KB - MMRs */
  SARAM0 (RWIX): origin = 0x010000, length = 0x010000  /*  64KB */
  SARAM1 (RWIX): origin = 0x020000, length = 0x020000  /* 128KB */
  SARAM2 (RWIX): origin = 0x040000, length = 0x00FE00  /*  64KB */
  VECS   (RWIX): origin = 0x04FE00, length = 0x000200  /*  512B */
  PDROM   (RIX): origin = 0xFE0000, length = 0x020000  /* 128KB */

 PAGE 2:  /* -------- 64K-word I/O Address Space -------- */

  IOPORT (RWI) : origin = 0x000000, length = 0x020000
}
 
/* SPECIFY THE SECTIONS ALLOCATION INTO MEMORY */

SECTIONS
{
   .text     >> SARAM1|SARAM2|SARAM0  /* Code                        */
   .data     >> DARAM0|SARAM0|SARAM1  /* Initialized vars            */
   .bss      >> DARAM0|SARAM0|SARAM1  /* Unitialized vars            */
}
