Check FBA06951
Auto 8224
   1 REM  +---------------------+
   2 REM  +      KARDIOIDY      +
   3 REM  +---------------------+
  10 REM STALE PROGRAMU
  15 LET Xsr=128
  20 LET Ysr=87
  25 LET DwaPi=2*PI
  30 REM PARAMETRY
  35 LET Rozdzielczosc=4
  40 LET Promien=53
  45 LET Gestosc=5
  50 REM WYKRESLENIE KRZYWYCH
  55 FOR R=1 TO Promien STEP Gestosc
  60 LET Krok=PI/(Rozdzielczosc*R)
  65 FOR K=0 TO DwaPi STEP Krok
  70 REM PARAMETRYCZNE ROWNANIA KRZYWEJ
  75 LET X=R+(1-COS (K))+COS (K)
  80 LET Y=R+(1-COS (K))+SIN (K)
  85 PLOT Xsr+X,Ysr-Y
  90 PLOT -Xsr+X,Ysr+Y
  95 NEXT K
 100 NEXT R
