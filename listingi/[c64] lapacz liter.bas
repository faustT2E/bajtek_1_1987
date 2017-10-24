10 GOSUB5000
1000 LF$=""
1010 DW$= "{up*22}" 
1020 HM$=CHR$(19)
1030 M1$=CHR$(171)+CHR$(178)+CHR$(177)+CHR$(179)
1040 M2$=CHR$(171)+CHR$(177)+CHR$(178)+CHR$(179)
1050 PRINTCHR$(147);CHR$(28);
1060 PRINTLEFT$(LF$, 16);"{>*3}{space*3}{<*3}"
1070 FORI=1TO10
1080 PRINTLEFT$(LF$,16);M1$;" ";M2$ 
1090 PRINTLEFT$(LF$,16);M2$;" ";M1$ 
1100 NEXT
1110 PRINTLEFT$(LF$,16);CHR$(31);" z{sh asterisk*2}JI  UK{sh asterisk*2}{cm x}";CHR$(5) 
1500 FORZ=1TO10 
1510 GOSUB2000 
1520 SC=SC+C%:C%=0 
1530 NEXT
1540 PRINTHM$;DW$;"{down}TWO{up}{left}.{down}J WYNIK: ";SC:IF SC>HS THEN HS=SC
1545 PRINTHM$;LF$;DW$;"{down}NAJLEPSZY WYNIK: ";HS; 
1550 WAIT 198,1
1560 SC=0:X=X+1:IFX>11THENX=11 
1570 GOTO1050
1999 REM--------------------------------
2000 FORA=1TORND(1)*10*(11-X) 
2010 : L%=RND(l)*26+65
2020 : PRINTCHR$(19);LF$;CHR$(L%)
2030 NEXT
2040 L$=CHR$(L%)
2050 FORI=2TO21
2055 :FORT=1TO(11-X)*2:NEXT
2060 :PRINTHM$;LF$;LEFT$(DW$,I-1);CHR$(32) 
2070 :GETA$
2080 :IFA$=L$THENC%=23-I:I=23:GOTO2100
2098 :PRINTHM$;LF$;LEFT$(DW$,I);L$
2100 NEXT 
2110 RETURN 
5000 REM NAPIS
5002 PRINT"{clear}{cm r}                      U{sh asterisk*12}I
5003 PRINT"B                      B bajtek '87 B
5004 PRINT"B                      J{sh asterisk*12}K
5005 PRINT"{cm q}{sh asterisk*1}{cm w}  U{sh asterisk*1}I U{sh asterisk*1}I U{sh asterisk*1}I U{sh asterisk*1}I {cm a}{sh asterisk*1}{cm s}
5006 PRINT"B    B B B B B B B    N  
5007 PRINT"B    B B B B B B B    N
5008 PRINT"{cm z}{sh asterisk*2}{cm w} J{sh asterisk*1}{cm e} {cm q}{sh asterisk*1}K J{sh asterisk*1}{cm e} J{sh asterisk*1}K {cm z}{sh asterisk*1}{cm x}
5009 PRINT"         B
5011 PRINT"         {cm e}         {cm r}
5012 PRINT"                   B          
5013 PRINT"                   B    B  
5014 PRINT"                   B  {cm r}{cm a}{cm r}{cm s}U{sh asterisk}I{cm a}{sh asterisk}I 
5015 PRINT"                   B  B B B BB
5016 PRINT"                   B  B B {cm q}{sh asterisk}{cm x}B
5017 PRINT"                   {cm z}{sh asterisk}{cm w}{cm e} J{sh asterisk}J{sh asterisk}K{cm e}  
5018 PRINT"{down*4}"
5020 PRINT"O{cm y} OP OP     O{cm y} OP {cm g}{cm m} OM {cm g}N TOP B B 
5021 PRINT"{cm g}{cm p} {cm g}{sh @} L{sh @}     M{cm o} {cm o}N MN OM NM T{cm g}  {cm q}{sh asterisk}{cm w} 
5022 PRINT"L{sh @} {cm g}M {cm g}{cm m} dla L{sh @} L{sh @} {cm m}{cm g} LN {cm g}{cm m} TL{sh @} B B   
5023 PRINT"
5024 WAIT198,1:RETURN