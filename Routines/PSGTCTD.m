PSGTCTD ;BIR/CML3-SHOW TOTAL COST TO DATE OF PATIENTS ; 15 May 98 / 9:26 AM
 ;;5.0; INPATIENT MEDICATIONS ;**3**;16 DEC 97
START ;
 D ENCV^PSGSETU I '$D(XQUIT) S PSGSSH="TCR",PSJACNWP=1,(PSGWG,PSGWD,PSGPAT)=0 D ^PSGSEL I "^"'[PSGSS D @PSGSS I +Y>0 D DEV I 'POP,'$D(IO("Q")) D ENQ,^%ZISC
 ;
DONE ;
 D ENKV^PSGSETU K AMT,CNTR,COST,DRG,DRGN,LN2,ND,PSJJORD,PSGDICA,PSGP,PSGPAT,PSGPN,PSGSS,PSGSSH,PSGWD,PSGWDN,PSGWG,PSN,SD,ZTOUT Q
 ;
ENQ ;
 D NOW^%DTC S PSGDT=%,DT=$P(%,".") K ^TMP("PSG",$J) D @("G"_PSGSS),^PSGTCTD0
 K ^TMP("PSG",$J) Q
 ;
GG ;
 F PSGWD=0:0 S PSGWD=$O(^PS(57.5,"AC",PSGWG,PSGWD)) Q:'PSGWD  D GW
 Q
 ;
GW ;
 I $D(^DIC(42,PSGWD,0)),$P(^(0),"^")]"" S PSGWDN=$P(^(0),"^") F PSGP=0:0 S PSGP=$O(^DPT("CN",PSGWDN,PSGP)) Q:'PSGP  D PAT
 Q
 ;
GP ;
 F PSGP=0:0 S PSGP=$O(PSGPAT(PSGP)) Q:'PSGP  D PAT
 Q
 ;
PAT ;
 S COST=0 D ^PSJAC S PSGPN=$S($P(PSGP(0),"^")]"":$P(PSGP(0),"^"),1:PSGP)_"^"_PSGP,PSN=$E($P(PSJPSSN,"^"),6,10)
 F SD=+PSJPAD:0 S SD=$O(^PS(55,PSGP,5,"AUS",SD)) Q:'SD  F PSJJORD=0:0 S PSJJORD=$O(^PS(55,PSGP,5,"AUS",SD,PSJJORD)) Q:'PSJJORD  D ADD
 S:$D(^TMP("PSG",$J,PSGPN)) ^(PSGPN)=$P(PSJPAD,"^",2)_"^"_PSN_"^"_PSJPDX Q
 ;
ADD ;
 N X F X=0:0 S X=$O(^PS(55,PSGP,5,PSJJORD,1,X)) Q:'X  D
 .; naked ref below refers to line above
 .S ND=^(X,0),DRG=+ND,DRGN=$G(^PSDRUG(DRG,0)),DRGN=$S($P(DRGN,"^")]"":$P(DRGN,"^"),1:DRG)_$S('$P(DRGN,"^",9):"",1:"^1"),DRG=+$P($G(^(660)),"^",6)
 .S AMT=$P(ND,"^",6)+$P(ND,"^",10)+$P(ND,"^",12)-$P(ND,"^",7) I DRG*AMT S ND=$G(^TMP("PSG",$J,PSGPN,DRGN)),^(DRGN)=+ND+AMT_"^"_(DRG*AMT+$P(ND,"^",2))
 Q
 ;
G ;
 S DIC="^PS(57.5,",DIC(0)="QEAMI",DIC("A")="Select WARD GROUP: " W ! D ^DIC K DIC S PSGWG=+Y Q
W ;
 S DIC="^DIC(42,",DIC(0)="QEAMI",DIC("A")="Select WARD: " W ! D ^DIC K DIC S PSGWD=+Y Q
P ;
 K PSGPAT S PSGPAT=0 F CNTR=1:1 S:CNTR>1 PSGDICA="another" D ENDPT^PSGP Q:PSGP'>0  S PSGPAT(PSGP)="",PSGPAT=PSGP
 S Y=PSGPAT Q
 ;
DEV ;
 K ZTSAVE S PSGTIR="ENQ^PSGTCTD",ZTDESC="TOTAL COST REPORT" F X="PSGSS","PSGWG","PSGWD","PSGPAT(" S ZTSAVE(X)=""
 D ENDEV^PSGTI Q