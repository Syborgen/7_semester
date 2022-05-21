
;
;
;     Model statements for module:  Create 1
;

2$            CREATE,        1,HoursToBaseTime(0.0),Entity 1:HoursToBaseTime(EXPO(1)):NEXT(3$);

3$            ASSIGN:        Create 1.NumberOut=Create 1.NumberOut + 1:NEXT(0$);


;
;
;     Model statements for module:  Process 1
;
0$            ASSIGN:        Process 1.NumberIn=Process 1.NumberIn + 1:
                             Process 1.WIP=Process 1.WIP+1;
7$            DELAY:         Triangular(.5,1,1.5),,VA;
54$           ASSIGN:        Process 1.NumberOut=Process 1.NumberOut + 1:
                             Process 1.WIP=Process 1.WIP-1:NEXT(1$);


;
;
;     Model statements for module:  Dispose 1
;
1$            ASSIGN:        Dispose 1.NumberOut=Dispose 1.NumberOut + 1;
57$           DISPOSE:       Yes;









