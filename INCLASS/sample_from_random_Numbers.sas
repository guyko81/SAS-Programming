/*
SAMPLE FROM THE GENERATED RANDOM NUMBERS
*/

DATA SAMPLE;
DO i=100 TO 9000 BY 100;
	SET assign point=i;
	OUTPUT;
END;
STOP;
RUN;

PROC PRINT DATA=SAMPLE;
RUN;

PROC univariate DATA=SAMPLE;
HISTOGRAM VARI /NORMAL;
RUN;
