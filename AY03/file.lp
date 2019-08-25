\ Model planificacion
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  ArtP_L1 + ArtN_L1 + ArtP_M2 + ArtN_M2 + ArtP_W3 + ArtN_W3 + ArtP_J4
   + ArtN_J4 + ArtP_V5 + ArtN_V5 + ArtP_S6 + ArtN_S6 + ArtP_D7 + ArtN_D7
   + ArtP_L8 + ArtN_L8 + ArtP_M9 + ArtN_M9 + ArtP_W10 + ArtN_W10 + ArtP_J11
   + ArtN_J11 + ArtP_V12 + ArtN_V12 + ArtP_S13 + ArtN_S13 + ArtP_D14
   + ArtN_D14
Subject To
 L1: x[Tomas,L1] + x[Javiera,L1] + x[Jorge,L1] + x[Ana,L1] + x[Camila,L1]
   + x[Diego,L1] + ArtP_L1 - ArtN_L1 = 3
 M2: x[Tomas,M2] + x[Javiera,M2] + x[Marcelo,M2] + x[Ana,M2] + ArtP_M2
   - ArtN_M2 = 6
 W3: x[Javiera,W3] + x[Ana,W3] + x[Camila,W3] + ArtP_W3 - ArtN_W3 = 2
 J4: x[Tomas,J4] + x[Javiera,J4] + x[Marcelo,J4] + x[Jorge,J4]
   + x[Camila,J4] + ArtP_J4 - ArtN_J4 = 4
 V5: x[Tomas,V5] + x[Javiera,V5] + x[Marcelo,V5] + x[Camila,V5]
   + x[Diego,V5] + ArtP_V5 - ArtN_V5 = 2
 S6: x[Tomas,S6] + x[Javiera,S6] + x[Marcelo,S6] + x[Ana,S6] + x[Camila,S6]
   + ArtP_S6 - ArtN_S6 = 5
 D7: x[Tomas,D7] + x[Javiera,D7] + x[Marcelo,D7] + x[Jorge,D7] + x[Ana,D7]
   + x[Camila,D7] + x[Diego,D7] + ArtP_D7 - ArtN_D7 = 5
 L8: x[Tomas,L8] + x[Javiera,L8] + x[Jorge,L8] + x[Ana,L8] + x[Diego,L8]
   + ArtP_L8 - ArtN_L8 = 5
 M9: x[Javiera,M9] + x[Marcelo,M9] + x[Jorge,M9] + x[Ana,M9] + x[Camila,M9]
   + x[Diego,M9] + ArtP_M9 - ArtN_M9 = 7
 W10: x[Tomas,W10] + x[Jorge,W10] + x[Camila,W10] + x[Diego,W10] + ArtP_W10
   - ArtN_W10 = 5
 J11: x[Tomas,J11] + x[Javiera,J11] + x[Marcelo,J11] + x[Ana,J11]
   + x[Camila,J11] + x[Diego,J11] + ArtP_J11 - ArtN_J11 = 3
 V12: x[Tomas,V12] + x[Javiera,V12] + x[Marcelo,V12] + x[Jorge,V12]
   + x[Ana,V12] + x[Camila,V12] + x[Diego,V12] + ArtP_V12 - ArtN_V12 = 2
 S13: x[Tomas,S13] + x[Javiera,S13] + x[Jorge,S13] + x[Ana,S13]
   + x[Camila,S13] + x[Diego,S13] + ArtP_S13 - ArtN_S13 = 5
 D14: x[Javiera,D14] + x[Marcelo,D14] + x[Jorge,D14] + x[Ana,D14]
   + x[Camila,D14] + x[Diego,D14] + ArtP_D14 - ArtN_D14 = 2
Bounds
 x[Tomas,D7] <= 1
 x[Tomas,W10] <= 1
 x[Tomas,S13] <= 1
 x[Tomas,L1] <= 1
 x[Tomas,V12] <= 1
 x[Tomas,L8] <= 1
 x[Tomas,V5] <= 1
 x[Tomas,J4] <= 1
 x[Tomas,M2] <= 1
 x[Tomas,S6] <= 1
 x[Tomas,J11] <= 1
 x[Javiera,L1] <= 1
 x[Javiera,D7] <= 1
 x[Javiera,J11] <= 1
 x[Javiera,J4] <= 1
 x[Javiera,V12] <= 1
 x[Javiera,M9] <= 1
 x[Javiera,S13] <= 1
 x[Javiera,L8] <= 1
 x[Javiera,S6] <= 1
 x[Javiera,V5] <= 1
 x[Javiera,D14] <= 1
 x[Javiera,M2] <= 1
 x[Javiera,W3] <= 1
 x[Marcelo,M2] <= 1
 x[Marcelo,V12] <= 1
 x[Marcelo,S6] <= 1
 x[Marcelo,M9] <= 1
 x[Marcelo,D7] <= 1
 x[Marcelo,D14] <= 1
 x[Marcelo,J11] <= 1
 x[Marcelo,J4] <= 1
 x[Marcelo,V5] <= 1
 x[Jorge,W10] <= 1
 x[Jorge,L8] <= 1
 x[Jorge,D14] <= 1
 x[Jorge,M9] <= 1
 x[Jorge,D7] <= 1
 x[Jorge,L1] <= 1
 x[Jorge,J4] <= 1
 x[Jorge,V12] <= 1
 x[Jorge,S13] <= 1
 x[Ana,D7] <= 1
 x[Ana,J11] <= 1
 x[Ana,W3] <= 1
 x[Ana,S6] <= 1
 x[Ana,M9] <= 1
 x[Ana,V12] <= 1
 x[Ana,S13] <= 1
 x[Ana,M2] <= 1
 x[Ana,L8] <= 1
 x[Ana,D14] <= 1
 x[Ana,L1] <= 1
 x[Camila,L1] <= 1
 x[Camila,V5] <= 1
 x[Camila,V12] <= 1
 x[Camila,D14] <= 1
 x[Camila,W10] <= 1
 x[Camila,D7] <= 1
 x[Camila,J11] <= 1
 x[Camila,W3] <= 1
 x[Camila,M9] <= 1
 x[Camila,J4] <= 1
 x[Camila,S13] <= 1
 x[Camila,S6] <= 1
 x[Diego,L8] <= 1
 x[Diego,V5] <= 1
 x[Diego,J11] <= 1
 x[Diego,M9] <= 1
 x[Diego,W10] <= 1
 x[Diego,V12] <= 1
 x[Diego,L1] <= 1
 x[Diego,D7] <= 1
 x[Diego,S13] <= 1
 x[Diego,D14] <= 1
End
