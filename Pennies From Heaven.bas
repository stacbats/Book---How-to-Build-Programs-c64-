1 REM From Pagee 11 - Titel Pennies from Heaven
2 print"{reverse on}{black} get ready - keys are , left & . right{reverse off}"
10 t=5:t0=ti:print" get ready..."t0
11 for t=t0+t*60 to t  
12  t=ti:t=t-5184e4*(t<t0)
14 next:print"go"t
20 b$=" L{cm o*3}{sh @} ": REM this is the basket
30 poke53280,0:poke53281,0: rem the screen colours
40 ca=0:m1=0:rem variables for caught & missed (set to 0)
50 printchr$(5)
60 printchr$(147):rem whit font and clear the screen
70 goto 1000
100 rem ****  PRINT ROUTINE ****
101 rem we set this early to save on update speed(search times)
110 rem l=Line Number
120 rem C=Column Number
130 poke 211,c: poke 214,l
131 rem so the above line poke the line and column numbers we 
132 rem need to prinbt to screen. The 64 will look for the exact address
140 a=1024+40*l
150 poke210,int(a/256)
160 poke209,a-256*int(a/256)
170 return
990 rem ************* GAME BEGINS *************
1000 l=0:c=2:gosub100:print"{yellow}     hearts from above.  by s bates"
1010 l=1:c=2:gosub100:print"{green} caught  0{space*13}{red}missed  0{white}"
1020 l=22:c=19:gosub100:printb$
1030 p1=19:rem position of basket on line 22
1040 rem ***** MAIN LOOP BEGINS ****
1060 for n = 1 to20:rem setting our 20 pennies loop
1070 c0=int(rnd(0)*34+4)
1080 for j= 3 to 22:rem j=current line of penny
1090 getk$:poke650,128
1100 if k$ = "," and p1 > 2  then p1=p1-1
1110 if k$ = "." and p1 < 33 then p1=p1+1
1120 l=22:c=p1:gosub100:printb$
1130 l=j-1:c=c0:gosub100:print" {left}{down}Q"
1150 next j
1160 if c0>=(p1+2)and c0 <=(p1+4)then1400:
1200 rem *** missed ***
1210 m1=m1+1:                   rem increment score 
1220 l=1:c=32:gosub100:print m1
1230 goto 1440
1400 rem caught
1410 ca=ca+1:                   rem incrment score
1430 l=1:c=10:  gosub100:printca
1440 l=22:c=c0: gosub100:print"S"
1450 l=22:c=c0: gosub100:print" "
1460 next n