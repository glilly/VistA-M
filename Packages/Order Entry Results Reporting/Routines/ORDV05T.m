ORDV05T ;;slc/jdl- Interim report rpc memo micro ;6/20/2001  18:52
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**109,208**;Dec 17, 1997
 ;
MI(LRDFN,IDT,MICROSUB,ALL,OUTCNT,FORMAT,DONE) ; from LR7OGM
 N MISUB,OK
 S OK=ALL
 I 'OK S MISUB=0 F  S MISUB=+$O(MICROSUB(MISUB)) Q:MISUB<1  I $D(^LR(LRDFN,"MI",IDT,MISUB)) S OK=1 Q
 I 'OK Q
 I $G(FORMAT) D
 .S ^TMP("OR7OGX",$J,"OUTPUT",OUTCNT)="^MI^"_(9999999-IDT)
 .S OUTCNT=OUTCNT+1
 .S DONE=1
 D MIC(LRDFN,IDT,.OUTCNT)
 Q
 ;
MIC(LRDFN,LRIDT,OUTCNT) ;
 N AGE,GCNT,GIOM,LINE,LREND,LRONESPC,LRONETST,NUM,SEX
 S GCNT=0,GIOM=80,LREND=0,LRONESPC="",LRONETST=0
 S AGE=$P(^TMP("OR7OG",$J,"G"),U,5),SEX=$P(^("G"),U,6)
 ; new variables used by LR7OSMZ0
 N %,A,A8,AB,B,B1,B2,B3,C,CCNT,DIC,DZ,I,IA,II,INC,J,K,LR1PASS,LR2ORMOR,LRAA,LRABCNT,LRACC,LRACNT,LRAD,LRADM,LRADX,LRAFS,LRAMT,LRAN,LRAO,LRAX
 N LRBN,LRBRR,LRBUG,LRCMNT,LRCOMTAB,LRCS,LRDCOM,LRDOC,LRDRTM1,LRDRTM2,LREF,LRFLAG,LRFMT,LRGRM,LRIFN,LRINT,LRJ02,LRLABKY,LRLLT,LRMYC,LRNS,LRNUM
 N LRORG,LRPAR,LRPATLOC,LRPC,LRPG,LRPRE,LRPRINT,LRQU,LRRC,LRRES,LRSB,LRSBC1,LRSBC2,LRSET,LRSIC1,LRSIC2,LRSET,LRSIC1,LRSIC2,LRSPEC,LRSSD,LRST
 N LRTA,LRTB,LRTBA,LRTBC,LRTBS,LRTK,LRTS,LRTSTS,LRTUS,LRUS,LRWRD,LRWRDVEW,N,S1,SP,X,X1,Y,Y1
 K DIC,LR1PASS,LRBUG,LRDCOM,LRINT,LRRES,LRTS K ^TMP("LR",$J),^TMP("LRC",$J),^TMP("LRT",$J)
 D EN1^LR7OSMZ0
 I '$O(^TMP("LRC",$J,0)) Q
 S NUM=0 F  S NUM=$O(^TMP("LRC",$J,NUM)) Q:NUM<1  S LINE=^(NUM,0) D
 .S ^TMP("OR7OGX",$J,"OUTPUT",OUTCNT)=LINE,OUTCNT=OUTCNT+1
 S OUTCNT=OUTCNT+1
 K ^TMP("LR",$J),^TMP("LRC",$J),^TMP("LRT",$J)
 Q