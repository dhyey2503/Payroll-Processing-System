
* EMP-REC fixed columns (80 bytes total)
*  1-5   EMP-ID          9(5)
*  6     space
*  7-26  EMP-NAME        X(20)
*  27    space
*  28-34 BASIC-SALARY    9(7)
*  35    space
*  36-38 OT-HOURS        9(3)
*  39    space
*  40-42 TAX-PERC        9(3)
*  43-80 spaces
 01 EMP-REC.
    05 EMP-ID           PIC 9(5).
    05 FILLER           PIC X(1).
    05 EMP-NAME         PIC X(20).
    05 FILLER           PIC X(1).
    05 BASIC-SALARY     PIC 9(7).
    05 FILLER           PIC X(1).
    05 OT-HOURS         PIC 9(3).
    05 FILLER           PIC X(1).
    05 TAX-PERC         PIC 9(3).
    05 FILLER           PIC X(38).
