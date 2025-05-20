1 REM   From the book Software Projects
2 REM   Example 1.3     Structured programming versus the trial-and-error approach


120 gosub 200:rem       Input Routine
130 gosub 300:rem       Processing Routine
140 gosub 400:rem       Calcualtion
150 gosub 500:rem       Output
160 end:rem             Program ends here
170 :

200 rem ****************                INPUT 
210 print chr$(147)
220 print"{green}enter time            (format:hh.mm.ss)"
230 input hr$
240 return

300 rem ****************                Processing Routine
310 ss$= right$(hr$,2):rem                      retrieve seconds
320 mm$= mid$(hr$,4,2):rem                      retrieve minutes
330 hh$= left$(hr$,2):rem                        retrieve hours
340 ss= val(ss$):rem                    make string value ss$ numerical
350 mm= val(mm$):rem                    make string value mm$ numerical
360 hh= val(hh$):rem                    make string value hh$ numerical
370 return


400 rem ****************                Calcualtion 
410 ss =ss/60
420 mm =mm+ss
430 mm=mm/60
440 hh=hh+mm
450 return

500 rem ****************                Output
510 print 
520 print"{light green}in decimal            hours:{red}";hh
530 return
