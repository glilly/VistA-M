RACMP ;HISC/GJC AISC/MJK-Complication Report (Part 1 of 3) ;4/16/96  09:47
 ;;5.0;Radiology/Nuclear Medicine;;Mar 16, 1998
 ; Select Imaging Type, if exists
 I $O(RACCESS(DUZ,""))="" D SETVARS^RAPSET1(0) S RAPSTX=""
 N RACMP S RACMP=+$O(^RA(78.1,"B","NO COMPLICATION",0))
 I 'RACMP D  Q
 . W !,"You need to define 'NO COMPLICATION' in your Complication "
 . W "Types file",!,"in order to run this report!"
 . Q
 S X=$$DIVLOC^RAUTL7() I X D KILL Q
 S A="" F  S A=$O(RACCESS(DUZ,"DIV-IMG",A)) Q:A']""  D
 . Q:'$D(^TMP($J,"RA D-TYPE",A))  S B=0
 . F  S B=+$O(^TMP($J,"RA D-TYPE",A,B)) Q:'B  D
 .. S ^TMP($J,"RACMP",B)=0
 .. S C="" F  S C=$O(RACCESS(DUZ,"DIV-IMG",A,C)) Q:C']""  D
 ... Q:'$D(^TMP($J,"RA I-TYPE",C))  S ^TMP($J,"RACMP",B,C)=0
 ... Q
 .. Q
 . Q
ASKLOG ; Ask date range
 K A,B,C,^TMP($J,"DIV-IMG") W !
 D DATE^RAUTL I RAPOP D KILL Q
 S RADTBEGI=BEGDATE,RADTENDI=ENDDATE
 S RADTBEG=BEGDATE-.0001,RADTEND=ENDDATE+.9999
 K BEGDATE,ENDDATE
 S Y=RADTBEGI X ^DD("DD") S RADTBEGX=Y
 S Y=RADTENDI X ^DD("DD") S RADTENDX=Y
 S ZTDESC="Rad/Nuc Med Complications Report"
 S ZTRTN="START^RACMP",ZTSAVE("RACMP")=""
 S ZTSAVE("RADT*")="",ZTSAVE("^TMP($J,""RACMP"",")=""
 S ZTSAVE("^TMP($J,""RA D-TYPE"",")=""
 S ZTSAVE("^TMP($J,""RA I-TYPE"",")="" D ZIS^RAUTL
 I RAPOP D KILL Q
START ; Start processing data
 U IO D NOW^%DTC S (RAPG,RAXIT)=0
 S:$D(ZTQUEUED) ZTREQ="@"
 S RATDY=$$FMTE^XLFDT(%\1,1),$P(RALN,"-",(IOM+1))=""
 S RAERR="No Data Captured For This Time Frame."
 S RAHDR(1)=">>> Complications Report <<<"
 S RAHDR(2)="Period: "_RADTBEGX_" to "_RADTENDX_"."
 S RATAB(1)=$S(IOM=132:15,1:9),RATAB(2)=$S(IOM=132:24,1:26)
 S RATAB(3)=$S(IOM=132:40,1:34),RATAB(4)=$S(IOM=132:52,1:49)
 S RATAB(5)=$S(IOM=132:90,1:52),RATAB(6)=$S(IOM=132:102,1:62)
 F RADTE=RADTBEG:0 S RADTE=$O(^RADPT("AR",RADTE)) Q:'RADTE!(RADTE>RADTEND)  D  Q:RAXIT
 . S RADFN=0 F  S RADFN=$O(^RADPT("AR",RADTE,RADFN)) Q:'RADFN  D  Q:RAXIT
 .. S RADTI=9999999.9999-RADTE D SORT^RACMP2
 .. Q
 . Q
 I RAXIT D CLOSE^RAUTL,KILL Q
 S X=$O(^TMP($J,"RACMP",""))
 I X="" S Y=X
 E  S Y=$O(^TMP($J,"RACMP",X,""))
 S RADIV=X,RAITYPE=Y D HEADER^RACMP2
 I $D(^TMP($J,"RACMP")) D
 . D PRINT^RACMP1
 . I 'RAXIT D
 .. S RADIVNM=$$DIVTOT("RACMP") Q:'RADIVNM
 .. S (RADIV,RAFLG,RAITYPE)="",RAXIT=$$EOS^RAUTL5()
 .. I 'RAXIT D HEADER^RACMP2,SYNOP^RACMP2
 .. Q
 . Q
 D CLOSE^RAUTL,KILL
 Q
KILL ; Kill and quit
 K %,%I,RA0,RA1,RA10,RA2,RA3,RA4,RA5,RA7,RACCESS(DUZ,"DIV-IMG"),RACMPTX
 K RACNI,RACOMP,RADFN,RADIV,RADIVNM,RADTBEG,RADTBEGI,RADTBEGX,RADTE
 K RADTEND,RADTENDI,RADTENDX,RADTI,RAERR,RAEX,RAFLG,RAHDR,RAITYPE,RALN
 K RANME,RAPG,RAPHY,RAPOP,RAPRC,RARE,RARES,RASSN,RASTF,RATAB,RATDY,RATME
 K RAQUIT,RAXIT,X,Y,ZTDESC,ZTRTN,ZTSAVE
 K ^TMP($J,"RA D-TYPE"),^TMP($J,"RA I-TYPE"),^TMP($J,"RACMP")
 K ^TMP($J,"RACMRE"),^TMP($J,"RACNTU"),^TMP($J,"RACOMP")
 K ^TMP($J,"RAEXAM")
 K:$D(RAPSTX) RACCESS,RAPSTX
 K %DT,BEGDATE,I,POP,RAMES
 Q
SET ; Set data global
 S X=RADTE D TIME^RAUTL1 S RATME=X
 S RAPRC=+$P(RAEX(0),"^",2),RAPRC=$G(^RAMIS(71,RAPRC,0))
 S RAPRC=$S($P(RAPRC,"^")]"":$E($P(RAPRC,"^"),1,20),1:"Unknown")
 S RARES=+$P(RAEX(0),"^",12),RARES=$G(^VA(200,RARES,0))
 S RARES=$S($P(RARES,"^")]"":$E($P(RARES,"^"),1,20),1:"Unknown")
 S RAPHY=+$P(RAEX(0),"^",14),RAPHY=$G(^VA(200,RAPHY,0))
 S RAPHY=$S($P(RAPHY,"^")]"":$E($P(RAPHY,"^"),1,20),1:"Unknown")
 S RASTF=+$P(RAEX(0),"^",15),RASTF=$G(^VA(200,RASTF,0))
 S RASTF=$S($P(RASTF,"^")]"":$E($P(RASTF,"^"),1,20),1:"Unknown")
 S RACMPTX=$G(^RADPT(RADFN,"DT",RADTI,"P",RACNI,"COMP"))
 S RACMPTX=$S(RACMPTX]"":RACMPTX,1:"None")
 S ^TMP($J,"RACMP",RADIV,RAITYPE,RANME,RADTE,RACNI)=RAPRC_"^"_RATME_"^"_RAPHY_"^"_RARES_"^"_RASTF_"^"_RACMPTX_"^"_$P(RACOMP,"^")_"^"_RASSN_"^"_RADFN
 Q
DIVTOT(Z) ; Check if more than one division is included in the report.
 ; Pass back '0' if just one division, '1' if more than one division.
 N X,Y1,Y2 S X=0
 S Y1=+$O(^TMP($J,Z,X)) Q:'Y1 0
 S Y2=+$O(^TMP($J,Z,Y1)) Q:Y2 1
 Q 0