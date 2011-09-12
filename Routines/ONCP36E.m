ONCP36E ;HINES OIFO/GWB-POST-INSTALL ROUTINE FOR PATCH ONC*2.11*36
 ;;2.11;ONCOLOGY;**36**;Mar 07, 1995
 ;
 ;HORMONE THERAPY
 D  D HT
 .S (FORDS,FORDSAF)=""
 .S HT=$$GET1^DIQ(165.5,IEN,54.2,"I")
 .S HTDT=$$GET1^DIQ(165.5,IEN,54,"I")
 .S HTAF=$$GET1^DIQ(165.5,IEN,54.3,"I")
 .S HTAFDT=$$GET1^DIQ(165.5,IEN,54.4,"I")
 .S RFNHT=$$GET1^DIQ(165.5,IEN,77,"I")
 .I HT=0 S FORDS="00"
 .I HTAF=0 S FORDSAF="00"
 .I HT=1 S FORDS="01"
 .I HTAF=1 S FORDSAF="01"
 .I HT=2 S FORDS="00"
 .I HTAF=2 S FORDSAF="00"
 .I HT=3 S FORDS="01"
 .I HTAF=3 S FORDSAF="01"
 .I HT>3,RFNHT=1 S FORDS="00"
 .I HTAF>3,RFNHT=1 S FORDSAF="00"
 .I HT>3,RFNHT=2 S FORDS=82
 .I HTAF>3,RFNHT=2 S FORDSAF=82
 .I HT>3,RFNHT=6 S FORDS=86
 .I HTAF>3,RFNHT=6 S FORDSAF=86
 .I HT>3,RFNHT=7 S FORDS=87
 .I HTAF>3,RFNHT=7 S FORDSAF=87
 .I HT>3,RFNHT=8 S FORDS=88
 .I HTAF>3,RFNHT=8 S FORDSAF=88
 .I HT=7 S FORDS=87
 .I HTAF=7 S FORDSAF=87
 .I HT=8 S FORDS=88
 .I HTAF=8 S FORDSAF=88
 .I HT=9 S FORDS=99
 .I HTAF=9 S FORDSAF=99
 .I FORDS="",HT'="",RFNHT'="" S FORDS="00"
 .I FORDSAF="",HTAF'="",RFNHT'="" S FORDSAF="00"
 .S SUB=0 F  S SUB=$O(SUBTX(SUB)) Q:SUB'>0  D  D SUBHT
 ..S FORDSUB=""
 ..I $P(SUBTX(SUB),U,7)=0 S FORDSUB="00" Q
 ..I $P(SUBTX(SUB),U,7)=1 S FORDSUB="01" Q
 ..I $P(SUBTX(SUB),U,7)=2 S FORDSUB="00" Q
 ..I $P(SUBTX(SUB),U,7)=3 S FORDSUB="01" Q
 ..I $P(SUBTX(SUB),U,7)=7 S FORDSUB=87 Q
 ..I $P(SUBTX(SUB),U,7)=8 S FORDSUB=88 Q
 ..I $P(SUBTX(SUB),U,7)=9 S FORDSUB=99 Q
 ;
 ;IMMUNOTHERAPY
 D  D IT
 .S (FORDS,FORDSAF)=""
 .S IT=$$GET1^DIQ(165.5,IEN,55.2,"I")
 .S ITDT=$$GET1^DIQ(165.5,IEN,55,"I")
 .S ITAF=$$GET1^DIQ(165.5,IEN,55.3,"I")
 .S ITAFDT=$$GET1^DIQ(165.5,IEN,55.4,"I")
 .I IT=0 S FORDS="00"
 .I ITAF=0 S FORDSAF="00"
 .I IT=1 S FORDS="01"
 .I ITAF=1 S FORDSAF="01"
 .I IT>1,IT<6 S FORDS="00"
 .I ITAF>1,ITAF<6 S FORDSAF="00"
 .I IT=6 S FORDS="01"
 .I ITAF=6 S FORDSAF="01"
 .I IT=7 S FORDS=87
 .I ITAF=7 S FORDSAF=87
 .I IT=8 S FORDS=88
 .I ITAF=8 S FORDSAF=88
 .I IT=9 S FORDS="00"
 .I ITAF=9 S FORDSAF="00"
 .S SUB=0 F  S SUB=$O(SUBTX(SUB)) Q:SUB'>0  D  D SUBIT
 ..S FORDSUB=""
 ..I $P(SUBTX(SUB),U,8)=0 S FORDSUB="00" Q
 ..I $P(SUBTX(SUB),U,8)=1 S FORDSUB="01" Q
 ..I $P(SUBTX(SUB),U,8)>1,$P(SUBTX(SUB),U,8)<6 S FORDSUB="00"
 ..I $P(SUBTX(SUB),U,8)=6 S FORDSUB="01" Q
 ..I $P(SUBTX(SUB),U,8)=7 S FORDSUB=87 Q
 ..I $P(SUBTX(SUB),U,8)=8 S FORDSUB=88 Q
 ..I $P(SUBTX(SUB),U,8)=9 S FORDSUB="00" Q
 ;
 ;HEMA TRANS/ENDOCRINE PROC
 D  D HTEP
 .S (FORDS,FORDSAF)=""
 .I $P(^ONCO(165.5,IEN,3.1),U,36)'="" Q
 .I (HT<1)!(HT>3),HTAF=7,IT=7,(ITAF<2)!(ITAF>6) S FORDS=11 Q
 .I HT=7,(HTAF<2)!(HTAF>3),IT=7,(ITAF<2)!(ITAF>6) S FORDS=11 Q
 .I (HT<2)!(HT>3),HTAF=7,(IT<2)!(IT>6),ITAF=7 S FORDS=11 Q
 .I HT=7,(HTAF<2)!(HTAF>3),(IT<2)!(IT>6),ITAF=7 S FORDS=11 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),RFNHT=7,IT=7,(ITAF<2)!(ITAF>6) S FORDS=11 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),RFNHT=7,(IT<2)!(IT>6),ITAF=7 S FORDS=11 Q
 .I (HT=0)!(HT=1),(HTAF<2)!(HTAF>3),(IT=0)!(IT=1),(ITAF<2)!(ITAF>6) S FORDS=1 Q
 .I (HT<2)!(HT>3),(HTAF=0)!(HTAF=1),(IT=0)!(IT=1),(ITAF<2)!(ITAF>6) S FORDS=1 Q
 .I (HT=0)!(HT=1),(HTAF<2)!(HTAF>3),(IT<2)!(IT>6),(ITAF=0)!(ITAF=1) S FORDS=1 Q
 .I (HT<2)!(HT>3),(HTAF=0)!(HTAF=1),(IT<2)!(IT>6),(ITAF=0)!(ITAF=1) S FORDS=1 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT=2,ITAF=3 S FORDS=2 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT=3,ITAF=2 S FORDS=2 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),(IT=4)!(IT=6),ITAF'=5 S FORDS=2 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT'=5,(ITAF=4)!(ITAF=6) S FORDS=2 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT=2,(ITAF<3)!(ITAF>5) S FORDS=3 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),(IT<3)!(IT>5),ITAF=2 S FORDS=3 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT=3,(ITAF<2)!(ITAF>5) S FORDS=4 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),(IT<2)!(IT>5),ITAF=3 S FORDS=4 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),IT=5,(ITAF<2)!(ITAF>4) S FORDS=5 Q
 .I (HT<2)!(HT>3),(HTAF<2)!(HTAF>3),(IT<2)!(IT>4),ITAF=5 S FORDS=5 Q
 .I (HT=2)!(HT=3),(IT<2)!(IT>6),(ITAF<2)!(ITAF>6) S FORDS=6 Q
 .I (HTAF=2)!(HTAF=3),(IT<2)!(IT>6),(ITAF<2)!(ITAF>6) S FORDS=6 Q
 .I (HT=2)!(HT=3),(ITAF>1)&(ITAF<7) S FORDS=7 Q
 .I (HTAF=2)!(HTAF=3),(ITAF>1)&(ITAF<7) S FORDS=7 Q
 .I (HT=2)!(HT=3),(IT>1)&(IT<7) S FORDS=7 Q
 .I (HTAF=2)!(HTAF=3),(IT>1)&(IT<7) S FORDS=7 Q
 .I IT=5,(ITAF=2)!(ITAF=3)!(ITAF=4)!(ITAF=6) S FORDS=13 Q
 .I (IT=2)!(IT=3)!(IT=4)!(IT=6),ITAF=5 S FORDS=13 Q
 Q
 ;
HT S:FORDS'="" $P(^ONCO(165.5,IEN,3),U,16)=FORDS
 S:(FORDS="00")!(FORDS=82)!(FORDS=86)!(FORDS=87) $P(^ONCO(165.5,IEN,3),U,14)="0000000"
 S:FORDSAF'="" $P(^ONCO(165.5,IEN,3.1),U,16)=FORDSAF
 S:(FORDSAF="00")!(FORDSAF=82)!(FORDSAF=86)!(FORDSAF=87) $P(^ONCO(165.5,IEN,3.1),U,17)="0000000"
 Q
 ;
SUBHT S:FORDSUB'="" $P(^ONCO(165.5,IEN,4,SUB,0),U,7)=FORDSUB
 S:(FORDSUB="00")!(FORDSUB=87) $P(^ONCO(165.5,IEN,4,SUB,0),U,14)="0000000"
 Q
 ;
IT S:FORDS'="" $P(^ONCO(165.5,IEN,3),U,19)=FORDS
 S:(FORDS="00")!(FORDS=87) $P(^ONCO(165.5,IEN,3),U,17)="0000000"
 S:FORDSAF'="" $P(^ONCO(165.5,IEN,3.1),U,18)=FORDSAF
 S:(FORDSAF="00")!(FORDSAF=87) $P(^ONCO(165.5,IEN,3.1),U,19)="0000000"
 Q
 ;
SUBIT S:FORDSUB'="" $P(^ONCO(165.5,IEN,4,SUB,0),U,8)=FORDSUB
 S:(FORDSUB="00")!(FORDSUB=87) $P(^ONCO(165.5,IEN,4,SUB,0),U,15)="0000000"
 Q
 ;
HTEP S:FORDS'="" $P(^ONCO(165.5,IEN,3.1),U,36)=FORDS
 S:(FORDS=1)!(FORDS=11) $P(^ONCO(165.5,IEN,3.1),U,35)="0000000"
 S:(FORDS=2)!(FORDS=3)!(FORDS=4)!(FORDS=5) $P(^ONCO(165.5,IEN,3.1),U,35)=$S(+$G(ITDT)>0:$G(ITDT),1:$G(ITAFDT))
 S:(FORDS=6)!(FORDS=7) $P(^ONCO(165.5,IEN,3.1),U,35)=$S(+$G(HTDT)>0:$G(HTDT),1:$G(HTAFDT))
 S:FORDS=13 $P(^ONCO(165.5,IEN,3.1),U,35)=9999999
 Q