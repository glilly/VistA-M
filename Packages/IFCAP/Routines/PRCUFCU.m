PRCUFCU ;WISC/SJG-OBLIGATION CONVERSION UTILITIES ;7/25/94  11:25
 ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 ;
 QUIT
 ; No top level entry
BOCS ; Step 1 - Assign BOCs to Supply Fund Line Items
 N SUBINFO,LOOP2,ITEMNO,ACCT,ITEMBOC
 S LOOP2=0
 F  S LOOP2=$O(^PRC(442,LOOP,2,LOOP2)) Q:LOOP2'>0  D
 .K PRCTMP(442.01)
 .S SUBINFO="442.01^1.5;3.5;9.5^"_LOOP2
 .D GENDIQ^PRCFFU7(442,LOOP,40,"IE",SUBINFO)
 .S ITEMBOC=+$G(PRCTMP(442.01,LOOP2,3.5,"I"))
 .I ITEMBOC>0 Q
 .S ITEMNO=+$G(PRCTMP(442.01,LOOP2,1.5,"I"))
 .S ACCT=$$ACCT^PRCPUX1($E($$NSN^PRCPUX1(ITEMNO),1,4))
 .S ITEMBOC=$S(ACCT=1:2697,ACCT=2:2698,ACCT=3:2699,ACCT=6:2699,ACCT=8:2696,1:2699)
 .S ITEMBOC=$P($G(^PRCD(420.2,ITEMBOC,0)),U)
 .S DA(1)=LOOP,DA=LOOP2,DIE="^PRC(442,"_DA(1)_",2,"
 .S DR="3.5////^S X=ITEMBOC" D ^DIE K DIE,DR,DA,X
 .Q
 K PRCTMP(442.01)
 QUIT
BOCG ; Step 1 - Assign BOCS to General Post Fund Line Items
 N SUBINFO,LOOP2,ITEMNO,ITEMBOC
 S LOOP2=0,FATAL=0
 F  S LOOP2=$O(^PRC(442,LOOP,2,LOOP2)) Q:LOOP2'>0  D
 .K PRCTMP(442.01)
 .S SUBINFO="442.01^1.5;3.5;9.5^"_LOOP2
 .D GENDIQ^PRCFFU7(442,LOOP,40,"IE",SUBINFO)
 .S ITEMBOC=+$G(PRCTMP(442.01,LOOP2,3.5,"I"))
 .I ITEMBOC>0 Q
 .S ITEMNO=+$G(PRCTMP(442.01,LOOP2,1.5,"I"))
 .I ITEMNO>0 D
 ..K PRCTMP(441,ITEMNO,12)
 ..D GENDIQ^PRCFFU7(441,ITEMNO,12,"IE","")
 ..S ITEMBOC=+$G(PRCTMP(441,ITEMNO,12,"I"))
 ..I ITEMBOC=0 S ITEMBOC=9999
 ..Q
 .I ITEMNO=0 S ITEMBOC=9999
 .S ITEMBOC=$P($G(^PRCD(420.2,ITEMBOC,0)),U)
 .S DA(1)=LOOP,DA=LOOP2,DIE="^PRC(442,"_DA(1)_",2,"
 .S DR="3.5////^S X=ITEMBOC" D ^DIE K DIE,DR,DA,X
 .K PRCTMP(441,ITEMNO,12)
 .Q
 K PRCTMP(442.01)
 QUIT
AMTS ; Set variables for Total Amount, Net Amount, Liquidated Amount
 S PRCFA("GROSS")=$G(PRCTMP(442,LOOP,91,"E"))
 S PRCFA("NET")=$G(PRCTMP(442,LOOP,92,"E"))
 S PRCFA("LIQ")=+$G(PRCTMP(442,LOOP,93,"E"))
 S FATAL=0
 I PRCFA("GROSS")-PRCFA("LIQ")=0 S FATAL=1 Q
 I PRCFA("NET")-PRCFA("LIQ")=0 S FATAL=1 Q
 QUIT