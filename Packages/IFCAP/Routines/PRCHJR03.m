PRCHJR03 ;OI&T/LKG - PROCESS 2237 RETURN OR CANCEL FROM ECMS CONT. ;9/14/12  17:35
 ;;5.1;IFCAP;**167**;Oct 20, 2000;Build 17
 ;Per VHA Directive 2004-38, this routine should not be modified.
LOGOMN ;Log incoming OMN^O07 message
 N PRCVAR1,PRCVAR2,PRCVAR3,PRCVAR4,PRCVAR5,X,Y
 S PRCVAR1=$G(^XTMP(PRCHJIND,"2237 TXN")),PRCVAR2=$G(^XTMP(PRCHJIND,"ECMS ACTIONUID"))
 S PRCVAR3=$S($G(^XTMP(PRCHJIND,"ORDER CONTROL"))="CA":10,$G(^XTMP(PRCHJIND,"ORDER STATUS"))="IP":6,1:8)
 S PRCVAR4("MSGDT")=PRCHJMDT,PRCVAR4("MSGID")=PRCHJMID
 S PRCVAR4("STN")=$G(^XTMP(PRCHJIND,"STATION")),PRCVAR4("SUBSTN")=$G(^XTMP(PRCHJIND,"SUBSTATION"))
 S PRCVAR4("ECMSU")=$G(^XTMP(PRCHJIND,"USER","LASTNAME"))_", "_$G(^XTMP(PRCHJIND,"USER","FIRSTNAME"))_$S($G(^XTMP(PRCHJIND,"USER","MIDDLENAME"))'="":(" "_^("MIDDLENAME")),1:"")
 S PRCVAR4("ECMSU")=$$UP^XLFSTR(PRCVAR4("ECMSU"))
 S PRCVAR4("ECMSPH")=$G(^XTMP(PRCHJIND,"PHONE")),PRCVAR4("ECMSEM")=$G(^XTMP(PRCHJIND,"EMAIL"))
 S PRCVAR4("ECMSDT")=$G(^XTMP(PRCHJIND,"ACTION CREATED DATE"))
 S PRCVAR4("ECMSRN")=$G(^XTMP(PRCHJIND,"RETURN REASON"))
 S PRCVAR4("ECMSCM")=$G(^XTMP(PRCHJIND,"RETURN COMMENT"))
 D LOG^PRCHJTA(PRCVAR1,PRCVAR2,PRCVAR3,.PRCVAR4,.PRCVAR5)
 Q
 ;
LOGORN ;Log Ack ORN^O08
 N PRCVAR1,PRCVAR2,PRCVAR3,PRCVAR4,PRCVAR5
 S PRCVAR1=$G(^XTMP(PRCHJIND,"2237 TXN")),PRCVAR2=$G(^XTMP(PRCHJIND,"ECMS ACTIONUID"))
 S PRCVAR3=$S($G(^XTMP(PRCHJIND,"ORDER CONTROL"))="CA":11,$G(^XTMP(PRCHJIND,"ORDER STATUS"))="IP":7,1:9)
 S PRCVAR4("MSGDT")=PRCHJNOW,PRCVAR4("STN")=$G(^XTMP(PRCHJIND,"STATION"))
 S PRCVAR4("SUBSTN")=$G(^XTMP(PRCHJIND,"SUBSTATION"))
 I $D(PRCHJERR) D
 . N PRCI,PRCCNT S PRCI=0,PRCCNT=0
 . F  S PRCI=$O(PRCHJERR(PRCI)) Q:PRCI=""  D
 . . S PRCCNT=PRCCNT+1,PRCVAR4("ERROR",PRCCNT)=$TR(PRCHJERR(PRCI),"^",":")
 D LOG^PRCHJTA(PRCVAR1,PRCVAR2,PRCVAR3,.PRCVAR4,.PRCVAR5)
 Q
 ;
XECMSIDS(PRCIEN) ;Removes eCMS identifiers
 ;Removes eCMS ActionUID at header and ItemUIDs at item line of 2237
 ;Input PRCIEN should be IEN of the 2237 in file #410
 ; Returns '0' if successful and '1' if unsuccessful
 Q:PRCIEN'>0 1
 N DA,PRCDATA,PRCERR,PRCHJDA,PRCI,PRCERROR
 S PRCERROR=0,PRCHJDA=PRCIEN_",",PRCDATA(410,PRCHJDA,103)="@"
 D FILE^DIE("K","PRCDATA","PRCERR") S:$D(PRCERR) PRCERROR=1 K PRCDATA,PRCERR
 S PRCI=0
 F  S PRCI=$O(^PRCS(410,PRCIEN,"IT",PRCI)) Q:+PRCI'=PRCI  D
 . S PRCDATA(410.02,PRCI_","_PRCHJDA,100)="@"
 . D FILE^DIE("K","PRCDATA","PRCERR") S:$D(PRCERR) PRCERROR=1
 . K PRCDATA,PRCERR
 Q PRCERROR