regulatory_species_array = [
true	;#ac[e]
false	;#fru[e]
true	;#fum[e]??
true	;#glc-D[e]
false	;#glu-L[e]
false	;#lac-D[e]
false	;#mal-L[e]
true	;#nh4[e]
true	;#o2[e]
true	;#pi[e]
false	;#succ[e]
]

regulatory_flux_array = [
true;	#Biomass_Ecoli_core_w_GAM (or true?)
false;	#FBP
true;	#GLCpts
false;	#LDH_D
false;	#ME1
false;	#ME2
true;	#PFK
false;	#PGI
true;	#PYK
false;	#SUCCt2_2
false;	#TALA
false;	#TKT2
]

transcriptional_regulators_array = [
!regulatory_species_array[9];                                                   #1ArcA
regulatory_species_array[11]|regulatory_species_array[3]|
regulatory_species_array[7];                                                    #2DcuR
regulatory_species_array[11]|regulatory_species_array[3]|
regulatory_species_array[7];                                                    #3DcuS
regulatory_species_array[4]|!regulatory_species_array[1];                       #4FadR
regulatory_flux_array[1];                                                       #5Fis
!regulatory_species_array[9];                                                   #6Fnr
!(((!regulatory_flux_array[2])&
(!(regulatory_flux_array[12]|regulatory_flux_array[11]
|regulatory_flux_array[8])))|(regulatory_species_array[2]));                    #7FruR
regulatory_species_array[1];                                                    #8GlcC
!regulatory_species_array[8];                                                   #9GlnG
regulatory_species_array[4]|!regulatory_species_array[1];                       #10IclR
!regulatory_species_array[4];                                                   #11Mlc
!regulatory_species_array[8];                                                   #12Nac
!((!(regulatory_flux_array[5]|regulatory_flux_array[6]))&
(!(regulatory_flux_array[3]|regulatory_flux_array[9]|regulatory_flux_array[7]|
regulatory_flux_array[4]|regulatory_flux_array[10])));                          #13PdhR
!regulatory_species_array[10];                                                  #14PhoB
!regulatory_species_array[10];                                                  #15PhoR
!regulatory_species_array[4];                                                   #16CRPnoGLC
!(regulatory_species_array[4]|regulatory_species_array[7]|
regulatory_species_array[6]);                                                   #17CRPnoGLM
!regulatory_species_array[8];                                                   #18NRI_hi
!regulatory_species_array[8];                                                   #19NRI_low
((!regulatory_flux_array[2])&
(!(regulatory_flux_array[12]|regulatory_flux_array[11]
|regulatory_flux_array[8])))|(regulatory_species_array[2])                      #20surplusFDP
(!(regulatory_flux_array[5]|regulatory_flux_array[6]))&
(!(regulatory_flux_array[3]|regulatory_flux_array[9]|
regulatory_flux_array[7]|
regulatory_flux_array[4]|regulatory_flux_array[10]));                           #21surplusPYR
]

writedlm("transcriptional_regulators_aerobic_array.txt",transcriptional_regulators_array);

regulatory_rules_array = [
!transcriptional_regulators_array[10]&(!transcriptional_regulators_array[1]|
transcriptional_regulators_array[7]);                                           #1 ICL
!transcriptional_regulators_array[10]&(!transcriptional_regulators_array[1]|
transcriptional_regulators_array[7]);                                           #2 MALS
!transcriptional_regulators_array[13]|transcriptional_regulators_array[5];      #3 PDH
!regulatory_species_array[9]|
!(regulatory_species_array[9]&transcriptional_regulators_array[7])|
transcriptional_regulators_array[5];                                            #4 ACALD, and5ALCD2x
!transcriptional_regulators_array[6]|transcriptional_regulators_array[1]        #5 CYTBD
transcriptional_regulators_array[17]&!transcriptional_regulators_array[1]&
transcriptional_regulators_array[2];                                            #6 FUMt2_2, MALt2_2, and SUCCt2_2
transcriptional_regulators_array[1]|
(transcriptional_regulators_array[7]&transcriptional_regulators_array[16]);     #7 FORt2 and FORti
transcriptional_regulators_array[6]|transcriptional_regulators_array[2];        #8 FRD7
!transcriptional_regulators_array[1];                                           #9 FUM
!(transcriptional_regulators_array[12]|regulatory_species_array[5]);            #10 GLUDy
!transcriptional_regulators_array[1]&transcriptional_regulators_array[8];       #11 D_LACt2
!transcriptional_regulators_array[1]&transcriptional_regulators_array[8];       #12 MALS
!transcriptional_regulators_array[16];                                          #13 GLNS
!(transcriptional_regulators_array[18]&regulatory_species_array[5]);            #14 GLUSy
!transcriptional_regulators_array[1];                                           #15 D_LACt2
transcriptional_regulators_array[17]|!transcriptional_regulators_array[11];     #16 FRUpts2 and GLCpts
!transcriptional_regulators_array[1];                                           #17 MDH
!(transcriptional_regulators_array[1]|transcriptional_regulators_array[6]);     #18 NADH16
transcriptional_regulators_array[1]|transcriptional_regulators_array[6];        #19 PFL
!transcriptional_regulators_array[14];                                          #20 PIt2r
transcriptional_regulators_array[7];                                            #21 PPS
!transcriptional_regulators_array[11]|!transcriptional_regulators_array[7];     #22 GLCpts
!transcriptional_regulators_array[7];                                           #23 PYK
!(transcriptional_regulators_array[1]|transcriptional_regulators_array[6])|
transcriptional_regulators_array[16]|transcriptional_regulators_array[5];       #24 SUCDi
transcriptional_regulators_array[16]|transcriptional_regulators_array[6];       #25 ACKr
transcriptional_regulators_array[16]|transcriptional_regulators_array[6];       #26 PFL
!regulatory_species_array[4]|
(regulatory_species_array[8]&!transcriptional_regulators_array[16]);            #27 GLUN
]

writedlm("regulatory_rules_aerobic_array.txt",regulatory_rules_array);



#//////////////////////////////////#
## determine anaerobic conditions:##
#//////////////////////////////////#

regulatory_species_array = [
true	;#ac[e]
false	;#fru[e]
true	;#fum[e]??
true	;#glc-D[e]
false	;#glu-L[e]
false	;#lac-D[e]
false	;#mal-L[e]
true	;#nh4[e]
false	;#o2[e]
true	;#pi[e]
false	;#succ[e]
];

regulatory_flux_array = [
true;	#Biomass_Ecoli_core_w_GAM (or true?)
false;	#FBP
true;	#GLCpts
false;	#LDH_D
false;	#ME1
false;	#ME2
true;	#PFK
false;	#PGI
true;	#PYK
false;	#SUCCt2_2
false;	#TALA
false;	#TKT2
]

transcriptional_regulators_array = [
!regulatory_species_array[9];                                                   #1ArcA
regulatory_species_array[11]|regulatory_species_array[3]|
regulatory_species_array[7];                                                    #2DcuR
regulatory_species_array[11]|regulatory_species_array[3]|
regulatory_species_array[7];                                                    #3DcuS
regulatory_species_array[4]|!regulatory_species_array[1];                       #4FadR
regulatory_flux_array[1];                                                       #5Fis
!regulatory_species_array[9];                                                   #6Fnr
!(((!regulatory_flux_array[2])&
(!(regulatory_flux_array[12]|regulatory_flux_array[11]
|regulatory_flux_array[8])))|(regulatory_species_array[2]));                    #7FruR
regulatory_species_array[1];                                                    #8GlcC
!regulatory_species_array[8];                                                   #9GlnG
regulatory_species_array[4]|!regulatory_species_array[1];                       #10IclR
!regulatory_species_array[4];                                                   #11Mlc
!regulatory_species_array[8];                                                   #12Nac
!((!(regulatory_flux_array[5]|regulatory_flux_array[6]))&
(!(regulatory_flux_array[3]|regulatory_flux_array[9]|regulatory_flux_array[7]|
regulatory_flux_array[4]|regulatory_flux_array[10])));                          #13PdhR
!regulatory_species_array[10];                                                  #14PhoB
!regulatory_species_array[10];                                                  #15PhoR
!regulatory_species_array[4];                                                   #16CRPnoGLC
!(regulatory_species_array[4]|regulatory_species_array[7]|
regulatory_species_array[6]);                                                   #17CRPnoGLM
!regulatory_species_array[8];                                                   #18NRI_hi
!regulatory_species_array[8];                                                   #19NRI_low
((!regulatory_flux_array[2])&
(!(regulatory_flux_array[12]|regulatory_flux_array[11]
|regulatory_flux_array[8])))|(regulatory_species_array[2])                      #20surplusFDP
(!(regulatory_flux_array[5]|regulatory_flux_array[6]))&
(!(regulatory_flux_array[3]|regulatory_flux_array[9]|
regulatory_flux_array[7]|
regulatory_flux_array[4]|regulatory_flux_array[10]));                           #21surplusPYR
]

writedlm("transcriptional_regulators_anaerobic_array.txt",transcriptional_regulators_array);

regulatory_rules_array = [
!transcriptional_regulators_array[10]&(!transcriptional_regulators_array[1]|
transcriptional_regulators_array[7]);                                           #1 ICL
!transcriptional_regulators_array[10]&(!transcriptional_regulators_array[1]|
transcriptional_regulators_array[7]);                                           #2 MALS
!transcriptional_regulators_array[13]|transcriptional_regulators_array[5];      #3 PDH
!regulatory_species_array[9]|
!(regulatory_species_array[9]&transcriptional_regulators_array[7])|
transcriptional_regulators_array[5];                                            #4 ACALD, and5ALCD2x
!transcriptional_regulators_array[6]|transcriptional_regulators_array[1]        #5 CYTBD
transcriptional_regulators_array[17]&!transcriptional_regulators_array[1]&
transcriptional_regulators_array[2];                                            #6 FUMt2_2, MALt2_2, and SUCCt2_2
transcriptional_regulators_array[1]|
(transcriptional_regulators_array[7]&transcriptional_regulators_array[16]);     #7 FORt2 and FORti
transcriptional_regulators_array[6]|transcriptional_regulators_array[2];        #8 FRD7
!transcriptional_regulators_array[1];                                           #9 FUM
!(transcriptional_regulators_array[12]|regulatory_species_array[5]);            #10 GLUDy
!transcriptional_regulators_array[1]&transcriptional_regulators_array[8];       #11 D_LACt2
!transcriptional_regulators_array[1]&transcriptional_regulators_array[8];       #12 MALS
!transcriptional_regulators_array[16];                                          #13 GLNS
!(transcriptional_regulators_array[18]&regulatory_species_array[5]);            #14 GLUSy
!transcriptional_regulators_array[1];                                           #15 D_LACt2
transcriptional_regulators_array[17]|!transcriptional_regulators_array[11];     #16 FRUpts2 and GLCpts
!transcriptional_regulators_array[1];                                           #17 MDH
!(transcriptional_regulators_array[1]|transcriptional_regulators_array[6]);     #18 NADH16
transcriptional_regulators_array[1]|transcriptional_regulators_array[6];        #19 PFL
!transcriptional_regulators_array[14];                                          #20 PIt2r
transcriptional_regulators_array[7];                                            #21 PPS
!transcriptional_regulators_array[11]|!transcriptional_regulators_array[7];     #22 GLCpts
!transcriptional_regulators_array[7];                                           #23 PYK
!(transcriptional_regulators_array[1]|transcriptional_regulators_array[6])|
transcriptional_regulators_array[16]|transcriptional_regulators_array[5];       #24 SUCDi
transcriptional_regulators_array[16]|transcriptional_regulators_array[6];       #25 ACKr
transcriptional_regulators_array[16]|transcriptional_regulators_array[6];       #26 PFL
!regulatory_species_array[4]|
(regulatory_species_array[8]&!transcriptional_regulators_array[16]);            #27 GLUN
]

writedlm("regulatory_rules_anaerobic_array.txt",regulatory_rules_array);
