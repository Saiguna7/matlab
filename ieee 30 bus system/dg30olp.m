%% Topology of the power system (IEEE 30 bus system)
% Information about the bus matrix
  % nd   V    Ang.    Pg      Qg      PL      QL      Gs       jBs    Type
  % (1) (2)   (3)     (4)     (5)     (6)     (7)     (8)      (9)    (10)
  % Colum 11: if the bus has shunt element =1, if it hasnt shunt element =0
   bus =[  1     1    1.06    0       0     0     0     0       0       0;
            2     2    1.043   0      40   50.0  21.7   12.7    -40     50;
            3     3    1.0     0       0     0    2.4    1.2     0       0;
            4     3    1.06    0       0     0    7.6    1.6     0       0;
            5     2    1.01    0       0   37.0  94.2   19.0    -40     40;
            6     3    1.0     0       0     0    0.0    0.0     0       0;
            7     3    1.0     0       0     0   22.8   10.9     0       0;
            8     2    1.01    0       0   37.3  30.0   30.0    -10     40;
            9     3    1.0     0       0     0    0.0    0.0     0       0;
            10    3    1.0     0       0   19.0   5.8    2.0     0       0;
            11    2    1.082   0       0   16.2   0.0    0.0    -6      24;
            12    3    1.0     0       0     0   11.2    7.5     0       0;
            13    2    1.071   0       0   10.6   0.0    0.0    -6      24;
            14    3    1.0     0       0     0    6.2    1.6     0       0;
            15    3    1.0     0       0     0    8.2    2.5     0       0;
            16    3    1.0     0       0     0    3.5    1.8     0       0;
            17    3    1.0     0       0     0    9.0    5.8     0       0;
            18    3    1.0     0       0     0    3.2    0.9     0       0;
            19    3    1.0     0       0     0    9.5    3.4     0       0;
            20    3    1.0     0       0     0    2.2    0.7     0       0;
            21    3    1.0     0       0     0   17.5   11.2     0       0;
            22    3    1.0     0       0     0    0.0    0.0     0       0;
            23    3    1.0     0       0     0    3.2    1.6     0       0;
            24    3    1.0     0       0    4.3   8.7    6.7     0       0;
            25    3    1.0     0       0     0    0.0    0.0     0       0;
            26    3    1.0     0       0     0    3.5    2.3     0       0;
            27    3    1.0     0       0     0    0.0    0.0     0       0;
            28    3    1.0     0       0     0    0.0    0.0     0       0;
            29    3    1.0     0       0     0    2.4    0.9     0       0;
            30    3    1.0     0       0     0   10.6    1.9     0       0 ];

%Information about the line matrix
%COL 1.-  From bus
%COL 2.-  to bus
%COL 3.-  R P.U.
%COL 4.-  Xl P.U.
%COL 5.-  Xc (parallel) P.U.
%COL 6.-  Type of line: 0==Line ; 1==Transformer
%COL 7.- phase shifter angle
line = [1   2   0.0192   0.0575   0.02640    1
          1   3      100      100         0    1
          2   4   0.0570   0.1737   0.01840    1
          3   4   0.0132   0.0379   0.00420    1
          2   5   0.0472   0.1983   0.02090    1
          2   6   0.0581   0.1763   0.01870    1
          4   6   0.0119   0.0414   0.00450    1
          5   7   0.0460   0.1160   0.01020    1
          6   7   0.0267   0.0820   0.00850    1
          6   8   0.0120   0.0420   0.00450    1
          6   9   0.0      0.2080   0.0    0.978
          6  10   0         .5560   0      0.969
          9  11   0         .2080   0          1
          9  10   0         .1100   0          1
          4  12   0         .2560   0      0.932
         12  13   0         .1400   0          1
         12  14    0.1231    .2559   0          1
         12  15    0.0662    .1304   0          1
         12  16    0.0945    .1987   0          1
         14  15    0.2210    .1997   0          1
         16  17    0.0824    .1923   0          1
         15  18    0.1073    .2185   0          1
         18  19    0.0639    .1292   0          1
         19  20    0.0340    .0680   0          1
         10  20    0.0936    .2090   0          1
         10  17    0.0324    .0845   0          1
         10  21    0.0348    .0749   0          1
         10  22    100         100   0          1
         21  22    0.0116    .0236   0          1
         15  23    0.1000    .2020   0          1
         22  24    0.1150    .1790   0          1
         23  24    0.1320    .2700   0          1
         24  25    0.1885    .3292   0          1
         25  26    0.2544    .3800   0          1
         25  27    0.1093    .2087   0          1
         28  27     0       .3960   0      0.968
         27  29    0.2198    .4153   0          1
         27  30    0.3202    .6027   0          1
         29  30    0.2399    .4533   0          1
          8  28    0.0636    .2000   0.0214     1
          6  28    0.0169    .0599   0.065      1];
