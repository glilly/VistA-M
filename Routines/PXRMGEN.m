PXRMGEN ; SLC/PJH - PXRM General Edit/Inquiry ;01/21/2000
 ;;2.0;CLINICAL REMINDERS;;Feb 04, 2005
 ;
 ;Labels called from list 'PXRM GENERAL EDIT/LIST'
 ;
START(HEADER,PXRMGTYP,IEN) ;
 N PXRMREAD,PXRMSRC,PXRMVARM
 N VALM,VALMAR,VALMBCK,VALMBG,VALMCNT,VALMHDR,VALMSG,X,XMZ
 S X="IORESET"
 D ENDR^%ZISS,EN^VALM("PXRM GENERAL EDIT/LIST")
 W IORESET
 D KILL^%ZISS
 Q
 ;
EXIT ;Exit code
 D CLEAN^VALM10,FULL^VALM1
 S VALMBCK="Q"
 K ^TMP("PXRMGEN",$J)
 Q
 ;
HDR ; Header code
 S VALMHDR(1)=HEADER
 S VALMSG="+ Next Screen   - Prev Screen   ?? More Actions"
 Q
 ;
HELP ;Help code
 N ORU,ORUPRMT,XQORM,PXRMTAG S PXRMTAG="G"_PXRMGTYP
 D EN^VALM("PXRM DIALOG MAIN HELP")
 Q
 ;
INIT ;Init
 S VALMCNT=0
 D BUILD
 Q
 ;
 ;Load details (also called from edit PXRMGEDIT)
BUILD I PXRMGTYP="DTAX" D DTAX^PXRMTDLG(PXRMTIEN)
 I PXRMGTYP="FIP" D FIP^PXRMFIP(PXRMFIP)
 I PXRMGTYP="FPAR" D FPAR^PXRMFIND
 I PXRMGTYP="RCAT" D CAT^PXRMCAT(PXRMCAT)
 I PXRMGTYP="RESN" D RESN^PXRMRESN(PXRMRESN)
 I PXRMGTYP="SHFR" D SHFR^PXRMSHF(PXRMSHF)
 ;Reset Header
 D HDR
 Q
 ;
INQUIRE W IORESET
 I PXRMGTYP="DTAX" D INQ^PXRMTDLG(PXRMTIEN)
 I PXRMGTYP="RCAT" D INQ^PXRMCLST(PXRMCAT)
 I PXRMGTYP="DLG" D INQ^PXRMDLST(PXRMDIEN)
 I PXRMGTYP="DLGR" D INQ^PXRMDLST(PXRMDIEN)
 I PXRMGTYP="FIP" D INQ^PXRMFIP(PXRMFIP)
 I PXRMGTYP="FPAR" D INQ^PXRMFLST(PXRMFIEN)
 I PXRMGTYP="RESN" D INQ^PXRMSLST(PXRMRESN)
 I PXRMGTYP="SHFR" D INQ^PXRMSHF(PXRMSHF)
 ;
 N DIR S DIR(0)="E" D ^DIR
 ;
 S VALMBCK="R"
 Q
 ;
PEXIT ;PXRM GENERAL MENU protocol exit code
 S VALMSG="+ Next Screen   - Prev Screen   ?? More Actions"
 Q