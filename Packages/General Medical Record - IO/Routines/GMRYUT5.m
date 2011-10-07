GMRYUT5 ;HIRMFO/YH-UTILITIES FOR IV INPUT/OUTPUT TRANSFORM ;5/13/96
 ;;4.0;Intake/Output;;Apr 25, 1997
EN1 ;INFUSION SITE EXECUTABLE HELP, CALLED BY DD
 I '$D(GMRTRNS) D
 . N MSG S MSG(1)="Select from the following IV sites",MSG(2)=" "
 . D EN^DDIOL(.MSG)
 . Q
 S:'$D(GMRTRNS) X="" S (GMRZ,GMRN)=0 F  S GMRZ=$O(^GMRD(126.7,GMRZ)) Q:GMRZ'>0  S GMRN=GMRN+1,GMRY(GMRN)=GMRZ_"^"_$P(^(GMRZ,0),"^")_"^"_GMRN_". "
 S GMRN(1)=(GMRN\2)+(GMRN#2)
 I '$D(GMRTRNS) D LISTS
 I $D(GMRTRNS) K GTXT Q
 S MSG(1)=" ",MSG(2)="Enter a number with a qualifier L for LEFT/R for RIGHT, default (L)eft.",MSG(3)="(e.g., 2R for RIGHT WRIST; 2 or 2L for LEFT WRIST)" D EN^DDIOL(.MSG)
 K MSG K:'$D(GMRTRNS) GMRY,GMRZ,GMRN,GTXT Q
EN2 ;INFUSION SITE INPUT TRANSFORM, CALLED BY DD
 N GMROUT S:X["^" X="" G:X=""!($L(X)>3) Q K GMRX S GMROUT=0,GMRX=+X S:GMRX'>0 X="" G:X="" Q S GMRX(1)=$E(X,$L(X)),GMRTRNS=1,X="" D EN1
 I GMRX>0 D
 .I $G(GMRY(+GMRX))["OTHER" D OSITE^GMRYUT12 Q
 .I $D(GMRY(+GMRX)) S X=$S(GMRX(1)="":"LEFT","Rr"[GMRX(1):"RIGHT",1:"LEFT")_" "_$P(GMRY(GMRX),"^",2)
 E  D SELSITE^GMRYUT7 Q:GMROUT  S:X'="" X=$S(GMRX(1)="":"LEFT","Rr"[GMRX(1):"RIGHT",1:"LEFT")_" "_X
 I X'="" D EN^DDIOL("  "_X)
 K GMRX,GMRY,GMRZ,GMRN,GMRTRNS Q
Q K GMRX,GMRY,GMRN,GMRTRNS,GTXT Q
EN3 ;COMPUTE IV INTAKE AMOUNT, CALLED BY DD FOR COMPUTE FIELD
 S GTOTAL=+$P(^GMR(126,D0,"IV",D1,0),"^",5)
 K GMRY S GMRX=0 F  S GMRX=$O(^GMR(126,D0,"IV",D1,"IN","B",GMRX)) Q:GMRX'>0  S GMRX(1)=0 F  S GMRX(1)=$O(^(GMRX,GMRX(1))) Q:GMRX(1)'>0  D SETARY
 S X=+$P(GMRY($P(^GMR(126,D0,"IV",D1,"IN",D2,0),"^"),+D2),"^",2)
 Q
SETARY S GLEFT=+$P(^GMR(126,D0,"IV",D1,"IN",GMRX(1),0),"^",2),GINTAKE=$S($E($P(^(0),"^",2))="*":0,1:GTOTAL-GLEFT),GTOTAL=GTOTAL-GINTAKE,GMRY(GMRX,GMRX(1))=GLEFT_"^"_GINTAKE
 Q
EN4 ;SET SITE DC, TUBE CHANGE AND DRESSING CHANGE
 S:'$D(GDR) GDR=0 I '$D(^GMR(126,DA(1),"IVM",DA,1,0)) S ^GMR(126,DA(1),"IVM",DA,1,0)="^126.41DA^0^0"
 D WAIT^GMRYUT0 Q:GMROUT  K DD S DA(2)=DA(1),DA(1)=DA,X=+GX,DIC="^GMR(126,"_DA(2)_",""IVM"","_DA(1)_",1,",DIC(0)="ML" D FILE^DICN L -^GMR(126,DFN) Q:+Y'>0  S DA=+Y
 K DD,DIC S DIE="^GMR(126,"_DA(2)_",""IVM"","_DA(1)_",1,"
 G:'$D(GOPT) NOGOPT
 I GOPT["SITECK" D:$P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)="" SITEDES^GMRYUT6 D SITEDC^GMRYUT7 D KILLRC^GMRYUT9:GMRZ=""!GMROUT,ADDRC^GMRYUT9:GMRZ'="" K GMRZ,DIC G Q2
 I GOPT["START"!(GOPT["ADDONLY")!(GOPT["RESTART") S DR="S:GMRVTYP=""P""!(GDR=2) Y=""@1"";1////^S X=""NO REDNESS/PAIN/SWELLING"";@1;2///^S X=""yes"";S:GMRVTYP[""P""!(GDR>1) Y=""@2"";3///^S X=""yes"";@2;4///^S X=""`""_DUZ;6///^S X=GLINE" G Q1
 I GOPT["DCIV" D SITEDES^GMRYUT6 S DR="1///^S X=GMRZ;2///^S X=""no"";3///;4///^S X=""`""_DUZ;5///^S X=""yes"";" G Q1
 I GOPT["ADDSOL"!(GOPT["HANG") D:$P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)=""&(GMRVTYP'["P") SITEDES^GMRYUT6 D ADDHNG^GMRYUT6 G Q1
NOGOPT D:$P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)="" SITEDES^GMRYUT6 S DR="S:GMRVTYP[""P"" Y=""@1"";1///^S X=GMRZ;@1;2//^S X=""N"";S:GMRVTYP[""P"" Y=""@2"";3;@2;4///^S X=""`""_DUZ;5;" G Q1
 G Q2
Q1 D WAIT^GMRYUT0 G:GMROUT Q2
 D ^DIE L -^GMR(126,DFN) I $P(^GMR(126,DA(2),"IVM",DA(1),1,DA,0),"^",2)="",$P(^(0),"^",3)="",$P(^(0),"^",4)="",$P(^(0),"^",6)="" D KILLRC^GMRYUT9
 I $D(^GMR(126,DA(2),"IVM",DA(1),1,DA,0)),$P(^(0),"^",3)["Y",$P(^(0),"^",7)="" D IVLINE^GMRYUT9 D:GMROUT KILLRC^GMRYUT9
Q2 K DIE,DR,GMRZ Q
LISTS ;DISPLAY SITES
 K GTXT F I=1:1:GMRN(1) S $P(GTXT(I)," ",80)="" I $D(GMRY(I)) S GMRY=$P(GMRY(I),"^",3)_$P(GMRY(I),"^",2),GTXT(I)=GMRY_$E(GTXT(I),$L(GMRY),80)
 F I=GMRN(1)+1:1:GMRN I $D(GMRY(I)) S GTXT(I-GMRN(1))=$E(GTXT(I-GMRN(1)),1,40)_$P(GMRY(I),"^",3)_$P(GMRY(I),"^",2)
 N MSSG F I=1:1:GMRN(1) S MSSG=GTXT(I) D EN^DDIOL(MSSG)
 Q
SITEDES ;CALLED BY DD TO DISPLAY SELECTIONS FOR SITE DESCRIPTION 
 S GMRTRNS=0
DISPLAY N MSG K GMRZ S GMRZ="" I '$D(GMRTRNS) S MSG(1)=" ",MSG(2)="IV site descriptions" D EN^DDIOL(.MSG)
 K GMRY S GMRY=0,GMRN=0 F  S GMRY=$O(^GMRD(126.72,GMRY)) Q:GMRY'>0  S GMRN=GMRN+1,GMRY(GMRN)=GMRY_"^"_$P(^GMRD(126.72,+GMRY,0),"^") I GMRTRNS'=1 S MSG(1)=GMRN_". "_$P(GMRY(GMRN),"^",2) D EN^DDIOL(.MSG)
 I GMRN'>0 K GMRX,GMRY,GMRN,GMRTRNS Q
 Q:GMRTRNS=1  S MSG(1)="Select from 1 to "_GMRN_" (enter 1,3-5 etc.) to describe the infusion site: " D EN^DDIOL(.MSG) K:GMRTRNS=0 GMRY,GMRX,GMRZ,GMRTRNS Q
SITEDES1 ;SITE DESCRIPTION INPUT TRANSFORM, CALLED BY DD
 G:X=""!(+X'>0) QL K GMRX S GMRX=X,GMRTRNS=1 D DISPLAY
 S X="" D VALIDAT^GMRYUT9 G:'$D(GSEL) QL S GMRX=0 F  S GMRX=$O(GSEL(GMRX)) Q:GMRX'>0  S X=X_$S($L(X)>0:", ",1:"")_$P(GMRY(GMRX),"^",2)
QL D:X'="" EN^DDIOL("     "_X) K GMRX,GMRY,GMRN,GMRTRNS,GMRZ,GSEL Q