PSGWCAD ;BHAM ISC/PTD,CML-Calculate and Store AMIS Data ; 29 Dec 93 / 9:13 AM
 ;;2.3; Automatic Replenishment/Ward Stock ;;4 JAN 94
 ;Calling routine passes these variables: PSGWADT -AMIS Date, PSGWDN -drug number, PSGWQD -quantity dispensed, PSGWCAT -AMIS category, PSGWAOU -AOU for returns, SITE -for INPATIENT SITE for AOU.
 ;IF COMPLETE DATA IS NOT AVAILABLE, SET MISSING DATA FLAG. DO RECALC.
CHKDTA S INC=0 I PSGWCAT="R" I '$D(^PSI(58.1,PSGWAOU,0)) W !!,"Data missing - contact ADP personnel.",!,"The zero node for this AOU is missing.",!!,"No AMIS update made for this return!" G END
 I PSGWCAT="R" S LOC3=^PSI(58.1,PSGWAOU,0),PSGWCAT=PSGWCAT_$S($P(LOC3,"^",2)="W":"W",1:"A")
 I $D(^PSDRUG(PSGWDN,660)) S LOC1=^(660)
 E  S INC=1 D RECALC G END
 I $D(^PSDRUG(PSGWDN,"PSG")) S LOC2=^("PSG")
 E  S INC=1 D RECALC G END
 F J=3,5,6 I $P(LOC1,"^",J)="" S INC=1 D RECALC G END
 F J=2,3 I $P(LOC2,"^",J)="" S INC=1 D RECALC G END
 ;
MAIN D CALC I PSGWCAT["R" D SETRET,RECALC G END
 D SETDSP,RECALC
END K INC,LOC1,LOC2,LOC3,J,DOSE,COST,FLD,CAT,DTDA,DRGDA,FLDA,DA,DR,GOTIT S PSGWCAT=$E(PSGWCAT)
 Q
 ;
CALC ;COMPLETE DATA IS AVAILABLE, SO CALCULATE AMIS DATA.
 S DOSE=PSGWQD*$P(LOC2,"^",3),COST=PSGWQD*$P(LOC1,"^",6)
 I PSGWCAT="A" S FLD=$S($P(LOC2,"^",2)=0:"04",$P(LOC2,"^",2)=1:"07",$P(LOC2,"^",2)=2:"17",1:"22")
 I PSGWCAT="W" S FLD=$S($P(LOC2,"^",2)=0:"03",$P(LOC2,"^",2)=1:"06",$P(LOC2,"^",2)=2:"17",1:"22")
 I PSGWCAT["R" S FLD=$S($P(LOC3,"^",2)="W":$S($P(LOC2,"^",2)=0:"03",$P(LOC2,"^",2)=1:"06",$P(LOC2,"^",2)=2:"17",1:"22"),1:$S($P(LOC2,"^",2)=0:"04",$P(LOC2,"^",2)=1:"07",$P(LOC2,"^",2)=2:"17",1:"22"))
 Q
 ;
SETDSP ;
 D NEW S:'$D(^PSI(58.5,PSGWADT,"S",SITE,"AMIS",0)) ^(0)="^58.51S^^"
 I '$D(^PSI(58.5,PSGWADT,"S",SITE,"AMIS","FLD",FLD)) S DIC="^PSI(58.5,"_PSGWADT_",""S"","_SITE_",""AMIS"",",DIC(0)="LM",X=FLD,DA(2)=PSGWADT,DA(1)=SITE,DIC("DR")="1///"_DOSE_";2///"_COST K DD,DO D FILE^DICN K DIC Q
 S FLDA=$O(^PSI(58.5,PSGWADT,"S",SITE,"AMIS","FLD",FLD,0)),$P(^(0),"^",2)=$P(^PSI(58.5,PSGWADT,"S",SITE,"AMIS",FLDA,0),"^",2)+DOSE,$P(^(0),"^",3)=$P(^(0),"^",3)+COST
 Q
RECALC ;
 D NEW S:'$D(^PSI(58.5,PSGWADT,"S",SITE,"DRG",0)) ^(0)="^58.52P^^"
 I '$D(^PSI(58.5,"D",PSGWDN,PSGWADT,SITE)) S DIC="^PSI(58.5,"_PSGWADT_",""S"","_SITE_",""DRG"",",DIC(0)="LM",X=PSGWDN,DA(2)=PSGWADT,DA(1)=SITE,DIC("DR")="2///"_INC K DD,DO D FILE^DICN K DIC
 S DRGDA=$O(^PSI(58.5,"D",PSGWDN,PSGWADT,SITE,0)) I '$D(^PSI(58.5,PSGWADT,"S",SITE,"DRG",DRGDA,"CAT",0)) S ^(0)="^58.53SA^^"
 S GOTIT=0 F CAT=0:0 S CAT=$O(^PSI(58.5,PSGWADT,"S",SITE,"DRG",DRGDA,"CAT",CAT)) Q:'CAT  I $P(^(CAT,0),"^")=PSGWCAT S $P(^(0),"^",2)=$P(^(0),"^",2)+PSGWQD S GOTIT=1 Q
 I GOTIT Q
 S DIC="^PSI(58.5,"_PSGWADT_",""S"","_SITE_",""DRG"","_DRGDA_",""CAT"",",DIC(0)="LM",X=PSGWCAT,DA(3)=PSGWADT,DA(2)=SITE,DA(1)=DRGDA,DIC("DR")="1///"_PSGWQD K DD,DO D FILE^DICN K DIC Q
SETRET ;
 D NEW S:'$D(^PSI(58.5,PSGWADT,"S",SITE,"AMIS",0)) ^(0)="^58.51S^^"
 I '$D(^PSI(58.5,PSGWADT,"S",SITE,"AMIS","FLD",FLD)) S DIC="^PSI(58.5,"_PSGWADT_",""S"","_SITE_",""AMIS"",",DIC(0)="LM",X=FLD,DA(2)=PSGWADT,DA(1)=SITE,DIC("DR")="3///"_DOSE_";4///"_COST K DD,DO D FILE^DICN K DIC Q
 S FLDA=$O(^PSI(58.5,PSGWADT,"S",SITE,"AMIS","FLD",FLD,0)),$P(^(0),"^",4)=$P(^PSI(58.5,PSGWADT,"S",SITE,"AMIS",FLDA,0),"^",4)+DOSE,$P(^(0),"^",5)=$P(^(0),"^",5)+COST
 Q
NEW ;
 I '$D(^PSI(58.5,"B",PSGWADT)) S DIC="^PSI(58.5,",DIC(0)="LM",DLAYGO=58.5,(DINUM,X)=PSGWADT K DD,DO D FILE^DICN K DIC,DLAYGO
 S:'$D(^PSI(58.5,PSGWADT,"S",0)) ^(0)="^58.501PA^^" I '$D(^PSI(58.5,PSGWADT,"S",SITE,0)) S DIC="^PSI(58.5,"_PSGWADT_",""S"",",DIC(0)="LM",(DINUM,X)=SITE,DA(1)=PSGWADT K DD,DO D FILE^DICN K DIC
 Q