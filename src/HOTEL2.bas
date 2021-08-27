10REM Headcase Hotel Listing 3 (HOTEL2)
20REM Game code
30REM Tidied up listing
40REM Version 1.11 (21st Aug ‘95)
50REM By Stephen Scott
60*LOAD SpData 4F00
70ONERRORMODE7:PROCerror:END
80DIM HS%(8),HS$(8)
90RESTORE110:FORI%=0TO7
100READHS$(I%),HS%(I%):NEXT
110DATASTEVE,25000,GRAEME,24000
120DATABLUEBOTTLE,18000,ECCLES,16000
130DATALISTER,12000,CAT,8000
140DATAKRYTEN,6000,RIMMER,1000
150MODE5:VDU23;8202;0;0;0;
160PROCinit
170REPEAT:S%=0:q=FALSE:PROCborder
180L%=1:REPEAT
190ob%=L%+4
200h%=FALSE:d%=FALSE:dlev%=FALSE:dl%=0
210str%=FALSE:stp%=0:ct%=0:xl%=0
220ys%=0:ds%=1:nasty=1:DL%=&7FE0
230PROCgetlevel
240PROCenterlevel
250PROCplacenasties
260REPEAT:PROCd(5):REM Risc PC delay
270IFRND(40)=2PROCplonk
280IFstr% VDU19,0,RND(7);0;
290IFstr% SOUND3,-4,RND(255),1
300IFys%=0PROCkeys
310IFys% ANDRND(40)=2 ys%=FALSE:SOUND1,3,50,1:SOUND1,3,58,1
320IFstp%=0PROCmovenasties
330IFstp%=1ct%=ct%+1:IFct%>200stp%=0:FORI=0TO3:!&74=N%(I):?&76=2:!&77=(&5020+(L%*&20)):CALLsprite:NEXT:ct%=0
340IFob%=0 ANDX%=&5D98 d%=TRUE
350IFh%PROCmark:h%=FALSE:IFli%<>0PROCplace
360UNTILd% OR dlev% OR q ORli%<1
370REM
380IFli%<1 ORq PROCx:L%=10:GOTO420
390REM
400IFd%PROCdone:d%=FALSE
410IFdlev%PROCdownlevel:dlev%=FALSE
420L%=L%+1:UNTILL%=11
430IFli%<1 li%=3:GOTO440
440PROChigh
450UNTIL0
460:
470DEFPROCerror
480PRINT"Error from Headcase Hotel:"
490PRINT"Version 1.11 (21/8/1995)"
500PRINT‘
510REPORT:PRINT" at line ";ERL:END
520ENDPROC
530:
540DEFPROCinit
550DIM N%(4),obj(9)
560RESTORE580:FORa%=0TO9
570READobj(a%):NEXT
580DATA51,58,112,255,1,16,51,255,119,255
590d%=FALSE:plonk=0:S%=0:li%=3
600h%=FALSE:ob%=2:f%=5
610sx%=&5D00:W%=0:w%=0:o%=0
620DIM F%(9)
630RESTORE650:FORa%=0TO9
640READF%(a%):NEXT
650DATA&5300,&5320,&52C0,&52E0,&52A0
660DATA&5340,&5360,&5280,&5380,&53A0
670DIM c%(3),lk%(3),d%(7),L%(3)
680c%(0)=-640:c%(1)=16
690c%(2)=640:c%(3)=-16:DIMblk(10)
700RESTORE720:FORa%=1TO10
710READblk(a%):NEXT
720DATA120,255,90,15,239,150,240,225,238,15
730lk%(0)=0:lk%(1)=8:lk%(2)=320:lk%(3)=328
740FORa%=0TO7:d%(a%)=1:NEXT
750L%(0)=-640:L%(1)=16
760L%(2)=640:L%(3)=-16
770FOR I%=0 TO 2 STEP 2
780P%=&4A00:[OPT I%
790.draw LDA#13:STA&80:LDA#&88:STA&74
800LDA#&5A:STA&75
810.init LDA#19:STA&81
820.again LDA#2:STA&70:LDA&82:STA&77
830LDA&83:STA&78
840.loop2 LDY#0:LDX#16
850.draw2 LDA(&77),Y:STA(&74),Y
860INY:DEX:BNE draw2
870CLC:LDA&74:ADC#&40:STA&74
880LDA&75:ADC#1:STA&75:CLC
890LDA&77:ADC#16:STA&77
900LDA&78:ADC#0:STA&78:DEC&70
910BNEloop2
920SEC:LDA&74:SBC#112:STA&74
930LDA&75:SBC#2:STA&75:DEC&81
940BNEagain
950CLC:LDA&74:ADC#80:STA&74
960LDA&75:ADC#1:STA&75:DEC&80:BNEinit
970RTS
980.blank LDY#0:LDX#16:.draw_e
990LDA#0:STA(&74),Y:INY:DEX:BNEdraw_e
1000CLC:LDA&74:ADC#&40:STA&74
1010LDA&75:ADC#&01:STA&75:DEC&76
1020BNEblank:RTS
1030.sprite LDY#0:LDX#16:.draw_d
1040LDA(&77),Y:STA(&74),Y:INY:DEX
1050BNEdraw_d
1060CLC:LDA&74:ADC#&40:STA&74
1070LDA&75:ADC#&01:STA&75:CLC
1080LDA&77:ADC#&10:STA&77
1090LDA&78:ADC#&00:STA&78:DEC&76
1100BNEsprite:RTS:]:NEXT:ENDPROC
1110:
1120DEFPROCborder
1130COLOUR1:PRINTTAB(0,0)CHR$224;STRING$(18,CHR$225)CHR$240;
1140FORY=1TO30:PRINTTAB(0,Y)CHR$227;TAB(19,Y)CHR$228;:NEXT
1150PRINTTAB(0,30)CHR$229;STRING$(18,CHR$230)CHR$231;
1160VDU5:GCOL0,2:MOVE500,1000:VDU238
1170MOVE800,1000:PRINT"x"
1180MOVE(1279-224),1000:GCOL0,1
1190VDU236,236,236:MOVE48,1000
1200GCOL0,3:PRINT"000000":VDU4
1210ENDPROC
1220:
1230DEFPROCgetlevel
1240VDU5:GCOL0,3
1250IFL%=10 THENMOVE64,1000:PRINTL%:ELSE MOVE0,1000:PRINTL%
1260MOVE300,1000:PRINTds%:VDU4
1270RESTORE(4090+(L%*40))
1280READa,b,c
1290VDU19,1,a;0;19,2,b;0;19,3,c;0;
1300!&82=(&53A0+(L%*&20))
1310CALLdraw
1320st%=&5A88
1330A=1:REPEAT:READA$:j%=1
1340FORi%=st% TOst%+288 STEP16
1350b=VALMID$(A$,j%,1)
1360IFb=1 THEN 1380
1370!&74=i%:?&76=2:CALLblank
1380j%=j%+1
1390NEXT:st%=st%+640:A=A+1:UNTILA=14
1400!&74=&5B10:?&76=2:!&77=&5180:CALLsprite
1410!&74=&5B20:?&76=2:!&77=&51A0:CALLsprite
1420sx%=&7B08:FORo=1TOob%
1430!&74=sx%:?&76=2
1440!&77=(&4F00+(L%-1)*&20):CALLsprite
1450sx%=sx%+16:NEXT:sx%=sx%-16
1460ENDPROC
1470:
1480DEFPROCenterlevel
1490X%=&5D98:me=0:PROCd(50)
1500!&74=&5B10:?&76=2:!&77=&5520
1510CALLsprite
1520!&74=&5B20:?&76=2:!&77=&5540
1530CALLsprite
1540!&74=X%:?&76=2:!&77=&5380
1550CALLsprite:REPEAT:PROCd(10)
1560me=me+1:IFme=4:!&74=&5B10:?&76=2:!&77=&5180:CALLsprite:!&74=&5B20:?&76=2:!&77=&51A0:CALLsprite
1570UNTILme=9:ENDPROC
1580:
1590DEFPROCplacenasties
1600FORn=0TO3:PROCr2
1610N%(n)=P%
1620!&74=N%(n):?&76=2
1630!&77=(&5020+(L%*&20)):CALLsprite
1640NEXT:PROCr1:OB%=P%
1650!&74=OB%:?&76=2
1660!&77=(&4EE0+(L%*&20)):CALLsprite
1670ENDPROC
1680:
1690DEFPROCkeys
1700IFINKEY-67:o%=0:y%=1:PROCm1(8,X%,X%+16,X%+336)
1710IFINKEY-98:o%=2:y%=3:PROCm1(-8,X%+8,X%-8,X%+312)
1720IFINKEY-68:o%=4:y%=0:PROCm2(-320,X%+320,X%-320,X%-312)
1730IFINKEY-83:o%=7:y%=2:PROCm2(320,X%,X%+640,X%+648)
1740IFINKEY-56REPEATUNTILINKEY-54
1750IFINKEY-17 THEN *FX210,1
1760IFINKEY-82 THEN *FX210,0
1770IFINKEY-51 q=TRUE
1780ENDPROC
1790:
1800DEFPROCm1(a%,b%,c%,d%)
1810IF?c%<>0 OR ?d%<>0PROChb:IFG%<>3ENDPROC
1820W%=(W%+1)MOD2+o%
1830!&74=X%:?&76=2:CALLblank
1840X%=X%+a%
1850PROCyou(X%,F%(W%)):ENDPROC
1860:
1870DEFPROCm2(a%,b%,c%,d%)
1880IF?c%<>0 OR ?d%<>0PROChb:IFG%<>3ENDPROC
1890w%=(w%+1)MOD3:W%=w%+o%
1900!&74=X%:?&76=2:CALLblank
1910X%=X%+a%:PROCyou(X%,F%(W%))
1920ENDPROC
1930:
1940DEFPROCyou(x%,m%)
1950!&74=x%:?&76=2:!&77=m%:CALLsprite
1960ENDPROC
1970:
1980DEFPROCmovenasties
1990bad%=(bad%+1)MOD4
2000IFRND(4)=1PROCc2
2010bp%=(N%(bad%)+L%(d%(bad%)))
2020IFbp%=X%PROCy:h%=TRUE:ENDPROC
2030IFbp%=DL% THENdl%=0:DL%=&7FE0
2040IFbp%=OB% ANDob%>0 PROCreplace
2050IF?bp%=3ANDbp%<>X%PROCy:ENDPROC
2060yes%=0:FORi%=0TO3
2070IF?(bp%+lk%(i%))=0yes%=yes%+1
2080NEXT
2090IFyes%=1PROCc2
2100IFyes%=4PROCy:ENDPROC
2110IFyes%=0ANDbp%<>X%PROCc:ENDPROC
2120IFyes%=3ORyes%=2PROCy:h%=TRUE:ENDPROC
2130PROCy:ENDPROC
2140:
2150DEFPROCy
2160SOUND2,9,140,1
2170!&74=N%(bad%):?&76=2:CALLblank
2180N%(bad%)=bp%
2190!&74=N%(bad%):?&76=2
2200!&77=(&5020+(L%*&20)):CALLsprite
2210ENDPROC
2220:
2230DEFPROCc
2240p%=RND(4)-1
2250t%=?(N%(bad%)+L%(p%))
2260u%=(N%(bad%)+L%(p%))
2270IFt%=0 ORt%=3 ORu%=X% ORu%=obj(L%-1)d%(bad%)=p%
2280ENDPROC
2290:
2300DEFPROCc2
2310IFd%(bad%)MOD2=0p%=RND(2)*2-1
2320IFd%(bad%)MOD2=1p%=RND(2)*2-2
2330t%=?(N%(bad%)+L%(p%))
2340u%=(N%(bad%)+L%(p%))
2350IFt%=0 ORt%=3 ORu%=X% ORu%=obj(L%-1)d%(bad%)=p%
2360ENDPROC
2370:
2380DEFPROCplonk
2390U%=&5540+(RND(10)*&20)
2400IFU%=&5580 ANDxl%=1 ENDPROC
2410IFU%=&5580 xl%=1
2420IFU%=&55A0 AND L%=1 ENDPROC
2430IFU%=&55A0 AND dl%=1 ENDPROC
2440IFU%=&55A0 dl%=1:DL%=&7FE0
2450IFU%=&5580 AND li%=3 ENDPROC
2460IFU%=&5680 AND stp%=1 ENDPROC
2470PROCr1:!&74=P%:?&76=2
2480!&77=U%:CALLsprite
2490IFU%=&55A0 DL%=P%
2500ENDPROC
2510:
2520DEFPROChb
2530hit%=0
2540FORht%=0TO3:IFX%-N%(ht%)=-c%(y%) ANDstp%=0 hit%=1
2550NEXT
2560IFhit%=1 h%=TRUE:!&74=X%:?&76=2:CALLblank:!&74=X%:?&76=2:!&77=F%(W%):CALLsprite:ENDPROC
2570hs%=X%+c%(y%):G%=?hs%:H%=hs%?4
2580IFG%=obj(L%-1)PROCgotit:ENDPROC
2590IFG%=3PROCwhatbon
2600IFG%=blk(L%):ENDPROC
2610ENDPROC
2620:
2630DEFPROCgotit
2640!&74=hs%:?&76=2:CALLblank
2650SOUND1,10,100,15:PROCin(50*ds%)
2660ob%=ob%-1:!&74=sx%:?&76=2
2670CALLblank:sx%=sx%-16
2680IFob%<=0:!&74=&5B10:?&76=2:!&77=&51C0:CALLsprite:!&74=&5B20:?&76=2:!&77=&51E0:CALLsprite:ENDPROC
2690PROCreplace:ENDPROC
2700:
2710DEFPROCreplace
2720!&74=OB%:?&76=2:CALLblank
2730PROCr1:OB%=P%:!&74=OB%:?&76=2
2740!&77=(&4EE0+(L%*&20)):CALLsprite
2750ENDPROC
2760:
2770DEFPROCmark
2780SOUND1,2,90,1:!&74=X%:?&76=2
2790CALLblank:li%=li%-1:VDU5:GCOL0,0
2800MOVE((18-li%)*64)+24,1004:VDU237
2810VDU4:ys%=0
2820PROCd(130):ENDPROC
2830FORe=1TO4:FORd=0TO3:!&74=N%(d)
2840?&76=2:CALLblank:FORF=1TO80:NEXT
2850!&74=N%(d):?&76=2
2860!&77=(&5020+(L%*&20)):CALLsprite
2870NEXT:ENDPROC
2880:
2890DEFPROCplace
2900PROCr1:X%=P%:FORe=1TO4
2910!&74=X%:?&76=2:CALLblank
2920SOUND1,-9,200,1:PROCd(20):REM Risc PC delay
2930!&74=X%:?&76=2:!&77=F%(f%)
2940CALLsprite:PROCd(20):NEXT:REM Risc PC delay
2950ENDPROC
2960DEFPROCr1
2970P%=(RND(18)*16)+(RND(12)*640)+&5A88
2980IF?P%<>0 ORP%?8<>0 ORP%?320<>0 ORP%?328<>0GOTO2970
2981ENDPROC
2990DEFPROCr2
3000P%=(RND(18)*16)+(RND(6)*640)+&6708
3010IF?P%<>0 ORP%?8<>0 ORP%?320<>0 ORP%?328<>0GOTO3000
3020ENDPROC
3030:
3040DEFPROCd(del)
3050TIME=0:REPEATUNTILTIME>del:ENDPROC
3060:
3070DEFPROCin(N%)
3080MOVE48,1000:GCOL3,3:VDU5
3090PRINTRIGHT$("00000"+STR$(S%),6)
3100VDU4:S%=S%+N%:MOVE48,1000:VDU5
3110PRINTRIGHT$("00000"+STR$(S%),6)
3120VDU4:ENDPROC
3130:
3140DEFPROCwhatbon
3150!&74=hs%:?&76=2:CALLblank
3160k%=0:RESTORE3200
3170REPEAT:k%=k%+1:READgv%
3180UNTILgv%=H%:GOSUB(3200+(k%*10))
3190H%=0:ENDPROC
3200DATA108,104,62,15,61,31,105,63,124,73
3210h%=TRUE:RETURN
3220SOUND1,3,182,1:VDU5:GCOL0,1:MOVE((18-li%)*64)+24,1000:VDU236:VDU4:li%=li%+1:RETURN
3230SOUND1,6,100,1:dlev%=TRUE:dl%=0:RETURN
3240SOUND1,7,100,1:PROCin(500*ds%):RETURN
3250SOUND1,7,150,1:PROCin(200*ds%):RETURN
3260str%=str% EOR1:RETURN
3270SOUND1,4,170,3:ys%=TRUE:RETURN
3280SOUND1,5,100,1:IFds%=9RETURN ELSEVDU5:GCOL3,3:MOVE300,1000:PRINTds%:ds%=ds%+1:MOVE300,1000:PRINTds%:VDU4:ENDPROC
3290SOUND3,1,190,1:PROCr1:!&74=X%:?&76=2:CALLblank:X%=P%:G%=0:PROCyou(X%,F%(W%)):RETURN
3300FORI=0TO3:FORJ=1TO10:!&74=N%(I):?&76=2:!&77=RND(255):CALLsprite:SOUND2,-15,RND(150),1:NEXT:!&74=N%(I):?&76=2:!&77=(&53A0+(L%*&20)):CALLsprite:NEXT:stp%=1:ct%=1:RETURN
3310:
3320DEFPROCdownlevel
3330VDU19,0,0;0;24,32;64;96;960;
3340GCOL0,128:CLG:VDU24,1213;64;1246;960;
3350CLG:VDU26:VDU5:GCOL0,0:MOVE572,1000
3360VDU255,255:GCOL3,3:MOVE300,1000
3370PRINTds%:VDU4:L%=L%-2
3380VDU26,28,1,29,18,2,26:COLOUR130
3390COLOUR1:FORI=2TO27
3400PRINTTAB(1,I)STRING$(18,CHR$242);
3410NEXT:COLOUR128:FORI=2TO27
3420PRINTTAB(1,I)STRING$(18," ");
3430NEXT:ENDPROC
3440:
3450DEFPROCdone
3460VDU19,0,0;0;24,32;128;96;960;
3470GCOL0,128:CLG:VDU24,1213;64;1246;960;
3480CLG:VDU26,28,1,27,18,2:COLOUR130:COLOUR0
3490VDU26:M%=1:N%=2:O%=18:Q%=27:R%=1:Ss%=1
3500c=1:H%=241
3510REPEAT:COLOURc:c=c EOR1
3520VDU31M%N%,H%:VDU31O%Q%,H%
3530N%=N%+R%:Q%=Q%-Ss%
3540IFN%=1ORN%=28:M%=M%+1:R%=-R%:N%=N%+R%
3550IFQ%=1ORQ%=28:O%=O%-1:Ss%=-Ss%:Q%=Q%-Ss%
3560IFM%=10 THENH%=32:COLOUR128
3570UNTILM%=19:VDU5:GCOL3,3
3580MOVE0,1000:PRINTL%:MOVE300,1000:PRINTds%
3590IFL%=10 PROCwin:ENDPROC
3600ENDPROC
3610:
3620DEFPROCx
3630q=FALSE:VDU19,0,0;0;
3640VDU24,32;52;1246;1004;:GCOL0,129
3650CLG:GCOL0,0
3660SOUND0,-10,3,100:SOUND1,11,80,1
3670SOUND2,11,79,1:SOUND3,11,78,1
3680VDU5:GCOL3,3:m$="GAME OVER"
3690FORa=1TOLENm$
3700MOVE168+(a*80),(16*32)+24
3710PRINTMID$(m$,a,1):NEXT:GCOL0,0
3720FORX%=0TO2200STEP80
3730VDU25,4,8+(X%-512);0;25,5,8+X%;1024;25,4,1280-(8+(X%-512));0;25,5,1280-(8+X%);1024;:NEXT
3740PROCd(200):VDU24,32;52;1246;1004;
3750GCOL0,128:CLG:VDU4:ENDPROC
3760:
3770DEFPROCwin
3780VDU4:COLOUR3:PRINTTAB(3,10)"OH WELL DONE!";TAB(1,13)"You have finished";TAB(6,15)"the job."
3790PRINTTAB(2,20)"Hope you enjoyed";TAB(5,23)"the game!!"
3800PROCd(300)
3810VDU24,32;52;1246;1004;:GCOL0,128
3820CLG:VDU4:ENDPROC
3830:
3840DEFPROChigh:*FX21,0
3850*FX15,1
3860IFS%<=HS%(7) THENPROCtable:ENDPROC
3870VDU4:COLOUR1:PRINTTAB(2,2)"CONGRATULATIONS!"
3880VDU5:GCOL0,3:MOVE(3.5*64),(1024-(5*32)):PRINT"Your score of":VDU4:COLOUR2:PRINTTAB(7,7)RIGHT$("00000"+STR$(S%),6):VDU5:MOVE(3.5*64),(1024-(9*32)):PRINT"qualifies you":MOVE(6.5*64),(1024-(11*32)):PRINT"for the"
3890VDU4:COLOUR3:PRINTTAB(4,13)"Hall of Fame"
3900PRINTTAB(2,15)"Enter your name:";TAB(5,17);:COLOUR2:!&900=&200A0905:?&904=&7F:A%=0:X%=0:Y%=9:CALL&FFF1
3910I%=9:REPEAT I%=I%-1
3920UNTIL I%=1 OR HS%(I%-1)>S%
3930FOR V%=8 TO I%+1 STEP-1
3940HS$(V%)=HS$(V%-1):HS%(V%)=HS%(V%-1)
3950NEXT:HS$(I%)=$&905:HS%(I%)=S%
3960PROCtable:ENDPROC
3970:
3980DEFPROCtable
3990VDU24,32;(2*32);1246;1008;
4000GCOL0,128:CLG:VDU26:VDU4
4010COLOUR130:COLOUR1:PRINTTAB(2,2)" HEADCASE HOTEL ";:COLOUR3:PRINTTAB(3,4)" HALL OF FAME ":COLOUR128
4020FORJ%=0TO7
4030PRINTTAB(1,J%*2+8)HS$(J%)STRING$(12-LEN(HS$(J%)),".");RIGHT$("00000"+STR$(HS%(J%)),6):NEXT
4040PRINTTAB(2,26)"SPACEBAR TO PLAY"
4050*FX15
4060REPEATUNTILGET=32
4070VDU24,32;(2*32);1246;1008;
4080GCOL0,128:CLG:VDU26:VDU4:ENDPROC
4090:
4100REM Level Data
4110REM Logical colours
4120REM 13 lines of data (19 chrs wide)
4130DATA5,3,1
4140DATA1111111111111111111,1111111100011111111,1010001000001000101,1010110010100110101,1000100101010010001,1100001000001000011,1010000001000000101
4150DATA1001010101010101001,1001001001001001001,1001000011100001001,1001001111111001001,1000000000000000001,1111111111111111111
4160:
4170DATA1,3,2
4180DATA1111111111111111111,1000011100011000001,1011011111001011101,1011011111101011101,1011011111101010101,1000000000001010001,1111101111101010001
4190DATA1000001110000011101,1011100000111000001,1011101111111011101,1011101111111011101,1000000000000000001,1111111111111111111
4200:
4210DATA1,7,3
4220DATA1111111111111111111,1111111100011111111,1000110010100110001,1001000100010001001,1010010000000100101,1010100011100010101,1000101100011010001
4230DATA1001010000000101001,1100010100010100011,1010000010100000101,1000000100010000001,1111111100011111111,1111111111111111111
4240:
4250DATA1,3,4
4260DATA1111111111111111111,1010000000000000001,1010101111111111001,1010100000000000001,1000101110000000001,1010100011111111111
4270DATA1010101000000000111,1010101010010110001,1010101111010001101,1010100001001101001,1010100001000101101,1000100001000101001,1111111111111111111
4280:
4290DATA4,6,5
4300DATA1111111111111111111,1000000000010000001,1001000110110010011,1011001000001001101,1001001000001001001,1001010000000101001,1001001001001001001
4310DATA1001001000001001001,1100100110110010011,1100000001000000011,1000000000000000001,1000010100010100001,1111111111111111111
4320:
4330DATA5,4,1
4340DATA1111111111111111111,1111111100011111111,1111100001000001111,1111101111101110001,1000001000101101101,1011101010101100101
4350DATA1000101011101110001,1110100000001100111,1000101101101110111,1010001111100010111,1010100000111010101,1000111110111000001,1111111111111111111
4360:
4370DATA2,1,4
4380DATA1111111111111111111,1000010100010000011,1010100101001101001,1001000000100010011,1010010010000010001,1000100100101001101,1001001001000100001
4390DATA1010010010010010101,1000100110101001001,1001001000000100101,1010011101111010011,1100000000000000001,1111111111111111111
4400:
4410DATA1,5,6
4420DATA1111111111111111111,1000000000000000001,1011111110111111101,1000100010100000101,1010001010101101101,1011011010100111101,1010010110110110101
4430DATA1010100010110000101,1010101110111101101,1010000010100000001,1011111110111111101,1000000000000000001,1111111111111111111
4440:
4450DATA7,1,3
4460DATA1111111111111111111,1000000100000001111,1111100000000010001,1000001111110000001,1000010000000111111,1110000000001000001,1000111111000000001
4470DATA1001000000011111101,1000000000100000011,1011111100000000101,1100000001111110001,1000000010000000001,1111111111111111111
4480:
4490DATA2,4,1
4500DATA1111111111111111111,1000000100010000001,1011010001000101101,1001011110111101001,1101000100010001011,1001010001000101001,1011011111111101101
4510DATA1001000101010001001,1101110101010111011,1001000001000001001,1111011101011101111,1000010000000100001,1111111111111111111