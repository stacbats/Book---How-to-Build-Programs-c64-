1 � FROM PAGEE 11 - TITEL PENNIES FROM HEAVEN b �"� GET READY - KEYS ARE , LEFT & . RIGHT�" �
 T�5:T0�TI:�" GET READY..."T0 � � T�T0�T�60 � T � T�TI:T�T�5184E4�(T�T0) � �:�"GO"T � B$�" ̹��� ": � THIS IS THE BASKET 	 �53280,0:�53281,0: � THE SCREEN COLOURS K	( CA�0:M1�0:� VARIABLES FOR CAUGHT & MISSED (SET TO 0) U	2 ��(5) �	< ��(147):� WHIT FONT AND CLEAR THE SCREEN �	F � 1000 �	d � ****  PRINT ROUTINE **** �	e � WE SET THIS EARLY TO SAVE ON UPDATE SPEED(SEARCH TIMES) �	n � L=LINE NUMBER 
x � C=COLUMN NUMBER )
� � 211,C: � 214,L e
� � SO THE ABOVE LINE POKE THE LINE AND COLUMN NUMBERS WE �
� � NEED TO PRINBT TO SCREEN. THE 64 WILL LOOK FOR THE EXACT ADDRESS �
� A�1024�40�L �
� �210,�(A�256) �
� �209,A�256��(A�256) �
� � �� ************* GAME BEGINS ************* S�L�0:C�2:�100:�"�     HEARTS FROM ABOVE.  BY S BATES" ��L�1:C�2:�100:�" CAUGHT  0             MISSED  0" ��L�22:C�19:�100:�B$ �P1�19:� POSITION OF BASKET ON LINE 22 �� ***** MAIN LOOP BEGINS **** $� N � 1 �20:� SETTING OUR 20 PENNIES LOOP 0.C0��(�(0)�34�4) Z8� J� 3 � 22:� J=CURRENT LINE OF PENNY kB�K$:�650,128 �L� K$ � "," � P1 � 2  � P1�P1�1 �V� K$ � "." � P1 � 33 � P1�P1�1 �`L�22:C�P1:�100:�B$ �jL�J�1:C�C0:�100:�" ��" �~� J �� C0��(P1�2)� C0 ��(P1�4)�1400: %�� *** MISSED *** V�M1�M1�1:                   � INCREMENT SCORE m�L�1:C�32:�100:� M1 x�� 1440 �x� CAUGHT ��CA�CA�1:                   � INCRMENT SCORE ��L�1:C�10:  �100:�CA ��L�22:C�C0: �100:�"�" ��L�22:C�C0: �100:�" " �� N   