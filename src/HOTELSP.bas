10REM Hotel Madness Listing 1 (HOTELSP)
20REM Sprite Data Construction
30REM by Stephen Scott
40REM (c) 7th July,1992
50REM Original idea by Chris West
60REM on Amiga (unwritten) (C) 1991
70REM
80REM Wall data finished off
90REM 19th April, 1995
100:
110MODE7:H%=&4F00:HIMEM=H%
120PRINTENVELOPEANDASNENVELOPEANDCOUNTBuilding sprites...ENVELOPEANDDEG
130REPEAT
140READ a$
150IF a$>ENVELOPEANDCOUNTENVELOPEANDDEG !H%=EVAL(ENVELOPEANDCOUNT&ENVELOPEANDDEG+a$):H%=H%+4
160UNTIL a$=ENVELOPEANDCOUNTENVELOPEANDDEG
170PRINTENVELOPEANDASNENVELOPEANDCOUNTSaving the sprite data as ENVELOPEANDASNSpDATAENVELOPEANDATNENVELOPEANDDEGENVELOPEANDATN
180X%=&700:Y%=X% DIV 256
190$X%=ENVELOPEANDCOUNTSAVE SpDATA 4F00 ENVELOPEANDDEG+STR$~H%
200CALL&FFF7:END
210:
220REM Collectables data
230:
240DATA F2F2233,7A7D6B4F,4C448888,6B0F4E4C,3E7D7A7D,10317,6B6D6B6D,F0F6B6D
250DATA 61C1D3A,C58B8306,C4C88000,396264EA,75626441,103132,60C1D3A,C58B8206
260DATA 1283A170,DD773301,841C58E0,BBEECC08,6633BBBB,6062E3F,EECCDDDD,606CF47
270DATA AAEE99FF,99EE99DD,888844CC,44444444,1000000,100,5444444,50E
280DATA 1030201,1100110,F01010F,860E0F87,2D431221,669F0F0F,2E0E0E0E,CC6E
290DATA 20253010,0,212468C0,C0426060,30101000,4426021,88084,0
300DATA 44004433,88888888,62222CC,A090905,58A8A89,6090909,6,0
310DATA FFFF,53537000,44448888,2CECE000,73636373,70437343,ECACACEC,E0ECACAC
320DATA 55665577,2A190447,44CE46CC,27376EEE,47040808,77556655,EE6E3727,CC44CC44
330DATA 8F8F88FF,11234747,2E2E22EE,884C4C,11111111,77442222,0,CC448888
340:
350REM Baddies data
360:
370DATA 71717133,75717171,AA26EECC,D5B162EE,26041767,FF774707,EE75557D,FFEEE248
380DATA 60B0F07,FFF9F967,F0C0A0C,1D1F1F05,E0E0F67,306050B,AA22AA19,E090F0E
390DATA 27523010,E0D22755,4EA4C080,70B44EAA,41585D2,10031726,28A1AB4,800C8E46
400DATA 10000304,30A0101,8020001,C20E0884,34120710,1E351A12,C9C3A50E,CB86CACA
410DATA 44373711,77333366,DD193B11,EEDDDD55,DD999999,22333399,CCCCCCCC,88
420DATA FFAAAAEE,1C0D0F05,EEAAAAEE,6060E04,8183818,3070604,2028202,80C0C04
430DATA FDD57030,D0E3FDD,FBBAE0C0,50AFFBB,F5FA3D3E,11336644,F5FAF5FA,88CC6622
440DATA C0D0D0A0,F478383,D0B0E0C0,68A83870,73F7F0F,3C430403,68686868,C803060
450DATA 82278250,A8986450,A450A060,A050A45E,22AA,6098AA22,2098A850,A050E098
460DATA 44E0A060,22022202,22705060,44044404,55111111,669D9D9D,AA888888,669B9B9B
470:
480REM Lift doors data
490:
500DATA F5FAF5FA,C7CBC7CB,265537AB,E0E0E00F,C7CBC7CB,C7CBC7CB,E0E0E0E0,E0E0E0E0,9CDD9CB9,E1E1E10F,EAE4EAE4,6A6C6A6C,E1E1E1E1,E1E1E1E1,6A6C6A6C,6A6C6A6C
510DATA FAF5FAF5,CBC7CBC7,266626A3,1100000F,CBC7CBC7,CBC7CBC7,11117733,111111,9DDC9DBA,101010F,E4EAE4EA,6C6A6C6A,101CD89,1010101,6C6A6C6A,6C6A6C6A
520:
530REM Record,brush & man frame data
540:
550DATA A5A596F0,F0A5A596,96B487F0,F087B4B4,F7F7F7F7,F0F7F7F7,FEFEFEFE,F0FEFEFE,B4B4D2F0,F0D2B4B4,5A5AB4F0,F0B45A5A,F7F7F7F7,F0F7F7F7,FEFEFEFE,F0FEFEFE,5A5A3CF0,F05A5A3C,5A5A3CF0,F03C5A5A,F7F7F7F7,F0F7F7F7,FEFEFEFE,F0FEFEFE
560DATA 1010101,1010101,0,0,70010101,AA55AAF0,C0000000,AA44AAE0
570DATA 3213311,3B373301,C48CC88,CDCECC08,3030103B,E066060,C0C080CD,7066060
580DATA 3333311,3B373301,CCCCC88,CDCECC08,3030103B,E066060,C0C080CD,7066060
590DATA 3037711,33333301,8CCCC88,4C4CCC08,10103023,3011010,8080C0CC,8088080
600DATA 3037711,27233301,8CCCC88,CCCCCC08,10103033,2063830,C080C04C,4024360
610DATA 1333311,23233301,C0CEE88,CCCCCC08,10103033,1011010,8080C04C,C088080
620DATA 1333311,23233301,C0CEE88,CECCCC08,30103013,2042C60,8080C0CC,406C1C0
630DATA 3333311,3B373301,CCCCC88,CCCECD09,3030103B,E066060,C0C080CC,70660
640DATA 3333311,33373B09,CCCCC88,CDCECC08,30301033,E0660,C0C080CD,7066060
650DATA 3213311,3B373301,C84CC88,CCCECD09,3030103B,E066060,C0C080CC,70660
660DATA 3123311,33373B09,C48CC88,CDCECC08,30301033,E0660,C0C080CD,7066060
670:
680REM Wall data
690:
700DATA B40F7869,D2960F96,B40F7869,D2960F96,F69E10F,50F7869,F69E10F,50F7869
710DATA AB4CAF02,AF02AE1B,AE1BAB4C,AB4CAF02,AE1BAB4C,AB4CAF02,AF13AF1B,AF1BAB4C
720DATA 780F785A,D20FD25A,780F785A,D20FD25A,780F785A,780FD25A,780F785A,780FD25A
730DATA 1B141B05,1B141B14,3172F5FA,F5723110,39363936,C5727D36,F5FAF5FA,58AE5FA
740DATA D2D2F0F0,B5B597D3,9EDADAD2,F2B4B4BC,E3F2F2B4,F4E5E5E7,7C7E7A7A,F0F0F4F4
750DATA BFFEF4FE,F4FEBF1F,BFFEF4FE,F4FEBF1F,BF1FBFFE,FFFEF4FE,BF1FBFFE,FFFEF4FE
760DATA A7D7A7F1,F87CBC5E,BE5EBE78,E3D7A75F,AE4E8C5F,E1D7A7D7,2313015F,F85EBE56
770DATA F2FEF8CB,1E1E787B,C30E0E0C,F2FEF8CB,7A7B781E,1216707B,C3CBF8FE,F1FFF8CB
780DATA 6C7C7F0F,7A787F7C,63E3EF0F,4B0FEFE3,7A7A7A7A,F787A7A,ABEF0F4B,FEFABAB
790DATA 8487300F,85852525,850D610F,850525A5,A5852525,87940525,850525A5,F812DA5
800DATA 00000000,00000000,00000000,00000000,00000000,00000000,00000000,00000000
810DATA FAF5FAF5,CBC7CBC7,266626A3,F,CBC7CBC7,CBC7CBC7,0,0,9DDC9DBA,101010F,E4EAE4EA,6C6A6C6A,1010101,1010101,6C6A6C6A,6C6A6C6A
820:
830REM Bonus items
840:
850DATA F0F0703,F0F686C,1F1F2E4C,1F1FD1D9,494D493E,3070F4D,595D599B,4C2E1F5D
860DATA F0F0703,F0F6A68,1F1F2E4C,1F1FD5D1,4D494D49,3070F3E,5D595D59,4C2E1F9B
870DATA 3D3E0703,3D3E3D3E,939B2E4C,939B939B,3D3E7D3E,3071F1E,939BD59B,4C2E1717
880DATA F0F0703,7C6C3F0F,1F1F2E4C,51D19B1F,1F1F3E3E,3070F0F,17179393,4C2E1F1F
890DATA 1F0F0703,492C3E3D,171F2E4C,59939B93,1E2C4949,3070F0F,17935959,4C2E1F1F
900DATA 1E2E0703,F0F0F1F,171F2E4C,D9D59B93,3E6C3E1F,3070F1F,171F1793,4C2E9317
910DATA 3E0F0703,F0F4D69,9B1F2E4C,9B595DD1,1F0F1F1E,3070F1E,171F1717,4C2E1F17
920DATA F3F0703,F3F2E3F,9B9B2E4C,1F9B1F9B,2E1F2E2E,3070F2E,9B179B9B,4C2E1F9B
930DATA F0F0703,F790F7C,1F1F2E4C,1FD31FD7,F3D0F3E,3070F1E,1F971F9F,4C2E1F1F
940DATA 1E1F0703,6C0F2E49,17172E4C,D51F9B59,1E492E0F,3070F1F,17599B1F,4C2E1F17
950DATA F3F0703,F3F2E3F,9B9B2E4C,1F9B1F9B,2E1F2E2E,3070F2E,9B179B9B,4C2E1F9B
960DATA F0F0703,F790F7C,1F1F2E4C,1FD31FD7,F3D0F3E,3070F1E,1F971F9F,4C2E1F1F
970:
980REM Teleport
990DATA F0F0703,F790F7C,F3D0F3E,3070F1E,1F1F2E4C,1FD31FD7,1F971F9F,4C2E1F1F
