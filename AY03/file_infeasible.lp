\ Model planificacion
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 x[Tomas,J4] + 10 x[Tomas,J11] + 10 x[Tomas,L1] + 10 x[Tomas,M2]
   + 10 x[Tomas,V12] + 10 x[Tomas,D7] + 10 x[Tomas,S6] + 10 x[Tomas,S13]
   + 10 x[Tomas,M9] + 10 x[Tomas,L8] + 12 x[Javiera,L8] + 12 x[Javiera,L1]
   + 12 x[Javiera,V12] + 12 x[Javiera,M2] + 12 x[Javiera,V5]
   + 10 x[Marcelo,D14] + 10 x[Marcelo,W3] + 10 x[Marcelo,V12]
   + 10 x[Marcelo,D7] + 10 x[Marcelo,S13] + 10 x[Marcelo,J11]
   + 10 x[Marcelo,L1] + 10 x[Marcelo,S6] + 8 x[Jorge,S13] + 8 x[Jorge,D14]
   + 8 x[Jorge,S6] + 8 x[Jorge,M2] + 8 x[Jorge,W10] + 8 x[Ana,S13]
   + 8 x[Ana,S6] + 8 x[Ana,M2] + 8 x[Ana,V5] + 8 x[Ana,M9] + 8 x[Ana,W3]
   + 8 x[Ana,W10] + 8 x[Ana,V12] + 8 x[Ana,L8] + 9 x[Camila,S6]
   + 9 x[Camila,J11] + 9 x[Camila,W10] + 9 x[Camila,W3] + 9 x[Camila,D7]
   + 9 x[Camila,L1] + 9 x[Camila,M2] + 9 x[Camila,L8] + 9 x[Camila,M9]
   + 9 x[Camila,V12] + 9 x[Camila,S13] + 11 x[Diego,J11] + 11 x[Diego,S13]
   + 11 x[Diego,W3] + 11 x[Diego,L8] + 11 x[Diego,D7] + 11 x[Diego,D14]
   + 11 x[Diego,S6] + 11 x[Diego,M9] + 11 x[Diego,V12] + 11 x[Diego,L1]
Subject To
 L1: x[Tomas,L1] + x[Javiera,L1] + x[Marcelo,L1] + x[Camila,L1]
   + x[Diego,L1] = 6
 M2: x[Tomas,M2] + x[Javiera,M2] + x[Jorge,M2] + x[Ana,M2] + x[Camila,M2]
   = 6
 W3: x[Marcelo,W3] + x[Ana,W3] + x[Camila,W3] + x[Diego,W3] = 4
 J4: x[Tomas,J4] = 3
 V5: x[Javiera,V5] + x[Ana,V5] = 2
 S6: x[Tomas,S6] + x[Marcelo,S6] + x[Jorge,S6] + x[Ana,S6] + x[Camila,S6]
   + x[Diego,S6] = 4
 D7: x[Tomas,D7] + x[Marcelo,D7] + x[Camila,D7] + x[Diego,D7] = 6
 L8: x[Tomas,L8] + x[Javiera,L8] + x[Ana,L8] + x[Camila,L8] + x[Diego,L8]
   = 3
 M9: x[Tomas,M9] + x[Ana,M9] + x[Camila,M9] + x[Diego,M9] = 2
 W10: x[Jorge,W10] + x[Ana,W10] + x[Camila,W10] = 6
 J11: x[Tomas,J11] + x[Marcelo,J11] + x[Camila,J11] + x[Diego,J11] = 7
 V12: x[Tomas,V12] + x[Javiera,V12] + x[Marcelo,V12] + x[Ana,V12]
   + x[Camila,V12] + x[Diego,V12] = 4
 S13: x[Tomas,S13] + x[Marcelo,S13] + x[Jorge,S13] + x[Ana,S13]
   + x[Camila,S13] + x[Diego,S13] = 2
 D14: x[Marcelo,D14] + x[Jorge,D14] + x[Diego,D14] = 2
Bounds
 x[Tomas,J4] <= 1
 x[Tomas,J11] <= 1
 x[Tomas,L1] <= 1
 x[Tomas,M2] <= 1
 x[Tomas,V12] <= 1
 x[Tomas,D7] <= 1
 x[Tomas,S6] <= 1
 x[Tomas,S13] <= 1
 x[Tomas,M9] <= 1
 x[Tomas,L8] <= 1
 x[Javiera,L8] <= 1
 x[Javiera,L1] <= 1
 x[Javiera,V12] <= 1
 x[Javiera,M2] <= 1
 x[Javiera,V5] <= 1
 x[Marcelo,D14] <= 1
 x[Marcelo,W3] <= 1
 x[Marcelo,V12] <= 1
 x[Marcelo,D7] <= 1
 x[Marcelo,S13] <= 1
 x[Marcelo,J11] <= 1
 x[Marcelo,L1] <= 1
 x[Marcelo,S6] <= 1
 x[Jorge,S13] <= 1
 x[Jorge,D14] <= 1
 x[Jorge,S6] <= 1
 x[Jorge,M2] <= 1
 x[Jorge,W10] <= 1
 x[Ana,S13] <= 1
 x[Ana,S6] <= 1
 x[Ana,M2] <= 1
 x[Ana,V5] <= 1
 x[Ana,M9] <= 1
 x[Ana,W3] <= 1
 x[Ana,W10] <= 1
 x[Ana,V12] <= 1
 x[Ana,L8] <= 1
 x[Camila,S6] <= 1
 x[Camila,J11] <= 1
 x[Camila,W10] <= 1
 x[Camila,W3] <= 1
 x[Camila,D7] <= 1
 x[Camila,L1] <= 1
 x[Camila,M2] <= 1
 x[Camila,L8] <= 1
 x[Camila,M9] <= 1
 x[Camila,V12] <= 1
 x[Camila,S13] <= 1
 x[Diego,J11] <= 1
 x[Diego,S13] <= 1
 x[Diego,W3] <= 1
 x[Diego,L8] <= 1
 x[Diego,D7] <= 1
 x[Diego,D14] <= 1
 x[Diego,S6] <= 1
 x[Diego,M9] <= 1
 x[Diego,V12] <= 1
 x[Diego,L1] <= 1
End
