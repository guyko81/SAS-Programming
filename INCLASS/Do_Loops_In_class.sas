DATA SLIMK_INS;
INPUT SUBJ W_LOSS1 W_LOSS2 W_LOSS3 W_LOSS4 W_LOSS5;
DATALINES;
001 4 2 5 -1 3
002 3 8 2 3 5
003 5 1 0 2 4
004 1 1 4 7
005 2 6 -1
;
RUN;
DATA SLIM_UNI;
SET SLIMK_INS;
ARRAY y(*)WEIGHT_LOSS1-WEIGHT_LOSS5;
DO i=1 TO dim(y);
	wloss=y(i);
	OUTPUT;
END;
DROP i WEIGHT_LOSS1-WEIGHT_LOSS5;
proc print data=SLIM_UNI;
RUN;