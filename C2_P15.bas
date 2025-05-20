1 rem   from the book software projects
2 rem   example birthday & anniversary calendar (1)

9 rem                   our mainline
10 dim m$(12)
20 m$(1)="january": m$(2)="february": m$(3)="march"
30 m$(4)="april": m$(5)="may": m$(6)="june"
40 m$(7)="july": m$(8)="august": m$(9)="september"
50 m$(10)="october": m$(11)="november": m$(12)="december"



100 rem                  initialise program
110 gosub 1000
120 rem                  accept input
125 gosub 2000
130 rem                  display output
135 gosub 3000
140 rem                  terminate program
150 end


500 rem                                 ****   subroutines   ***

1000 rem        *initialisation routine
1001 rem        identification 
1011 poke53280,0:poke53281,0:poke646,5
1045 printchr$(147):rem clear screen
1055 print" *** birthday calendar ***"

1070 return:rem        return to mainline



2000 rem        Input Routine
2010 print"can you provide your name {light green}":input na$
2015 poke646,5
2020 print"what year were you born {light green}":input ye  
2025 poke646,5
2030 print"what number month were you born (1-12){light green}":input mo 
2032 if val(mo) <1 or val(mo)>12 then print"{red}invalid month- try again{light green}":goto2030
2035 poke646,5
2040 print"what day were you born (1-31){light green}":input dy 
2045 if dy<1 or dy>31 then print"{red}invalid month- try again{light green}":goto2040
2050 poke646,5
2500 return



3000 rem        Input Routine
3002 print"{clear}{down*2}"
3005 print"{reverse on}name","day","month","year{reverse off}"
3008 poke646,10
3010 print na$,dy,m$(mo),ye
3500 return


 