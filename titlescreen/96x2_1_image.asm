
 ; *** if you want to modify the bitmap color on the fly, just dim a
 ; *** variable in bB called "bmp_96x2_1_color", and use it to set the
 ; *** color.


 ;*** this is the height of the displayed data
bmp_96x2_1_window = 13

 ;*** this is the height of the bitmap data
bmp_96x2_1_height = 13

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif
   BYTE $00
 
 ;*** this is the color of each line in the bitmap data
bmp_96x2_1_colors 
	BYTE $9a
	BYTE $8a
	BYTE $8c
	;BYTE $8c
	BYTE $7c
	;BYTE $7c
	BYTE $7c
	;BYTE $6a
	BYTE $6a
	;BYTE $6a
	BYTE $5a
	;BYTE $5a
	BYTE $58
	BYTE $48
	BYTE $46
	BYTE $46

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_00
	BYTE %00000000
	BYTE %00000000
	BYTE %01111001
	BYTE %01111011
	BYTE %01111011
	BYTE %01111111
	BYTE %01111111
	BYTE %01111111
	BYTE %01111011
	BYTE %01111011
	BYTE %01111001
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_01
	BYTE %00000000
	BYTE %00000000
	BYTE %11100111
	BYTE %11100111
	BYTE %10000111
	BYTE %00000111
	BYTE %00000111
	BYTE %00000111
	BYTE %10000111
	BYTE %11100111
	BYTE %11100111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_02
	BYTE %00000000
	BYTE %00000000
	BYTE %10011110
	BYTE %10111110
	BYTE %10111110
	BYTE %11111110
	BYTE %11111110
	BYTE %11111110
	BYTE %11011110
	BYTE %11011110
	BYTE %10011110
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_03
	BYTE %00000000
	BYTE %00000000
	BYTE %01111111
	BYTE %01111111
	BYTE %00001111
	BYTE %00001111
	BYTE %00001111
	BYTE %00001111
	BYTE %00001111
	BYTE %01111111
	BYTE %01111111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_04
	BYTE %00000000
	BYTE %00000000
	BYTE %11100001
	BYTE %11100111
	BYTE %00000111
	BYTE %00000111
	BYTE %00000111
	BYTE %00000111
	BYTE %00000111
	BYTE %11100111
	BYTE %11100001
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_05
	BYTE %00000000
	BYTE %00000000
	BYTE %11111000
	BYTE %11111110
	BYTE %10011110
	BYTE %10000000
	BYTE %10000000
	BYTE %10000000
	BYTE %10011110
	BYTE %11111110
	BYTE %11111000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_06
	BYTE %00000000
	BYTE %00000000
	BYTE %01111001
	BYTE %01111011
	BYTE %01111011
	BYTE %01111111
	BYTE %01111111
	BYTE %01111111
	BYTE %01111011
	BYTE %01111011
	BYTE %01111001
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_07
	BYTE %00000000
	BYTE %00000000
	BYTE %11100111
	BYTE %11100111
	BYTE %10000111
	BYTE %00000111
	BYTE %00000111
	BYTE %00000111
	BYTE %10000111
	BYTE %11100111
	BYTE %11100111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_08
	BYTE %00000000
	BYTE %00000000
	BYTE %11111110
	BYTE %11111110
	BYTE %10000000
	BYTE %10000000
	BYTE %11111000
	BYTE %11111000
	BYTE %10000000
	BYTE %11111110
	BYTE %11111110
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_09
	BYTE %00000000
	BYTE %00000000
	BYTE %01111001
	BYTE %01111011
	BYTE %01111011
	BYTE %01111111
	BYTE %01111111
	BYTE %01111001
	BYTE %01111001
	BYTE %01111111
	BYTE %01111111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_10
	BYTE %00000000
	BYTE %00000000
	BYTE %11100001
	BYTE %11100001
	BYTE %10000000
	BYTE %10000000
	BYTE %11100001
	BYTE %11100001
	BYTE %11100111
	BYTE %11100111
	BYTE %10000001
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_11
	BYTE %00000000
	BYTE %00000000
	BYTE %11111000
	BYTE %11111110
	BYTE %00011110
	BYTE %00011110
	BYTE %11111110
	BYTE %11111000
	BYTE %10000000
	BYTE %11111000
	BYTE %11111000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
