DATA MAZETIME;
INPUT SUBJECT$ 1-4 SEX$ 5 AGE 6-9 TIME 10-11;

DATALINES;
B324M12.571
A712M13.773
H308M13.168
C119F13.375
;
/*PROC SORT;
BY SEX;*/
PROC PRINT DATA=MAZETIME;
Title "Maze Time";
ID Subject;
RUN;