FBP35D ; List Template Exporter ; 08-SEP-1994
 ;;3.5;FEE BASIS;;JAN 30, 1995
 ;;Per VHA Directive 10-93-142, this routine should not be modified.
 W !,"'FBPHONE MENU' List Template..."
 S DA=$O(^SD(409.61,"B","FBPHONE MENU",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="FBPHONE MENU" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="FBPHONE MENU^1^^80^6^17^1^1^PAYMENT HISTORY^FB PHONE MENU^PAYMENT HISTORY^1^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""FBPHON"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^7^7"
 .S ^SD(409.61,VALM,"COL",1,0)="DATES^6^19^SERVICE DATES^^0"
 .S ^SD(409.61,VALM,"COL",2,0)="SERVICE^26^13^SERVICE^^0"
 .S ^SD(409.61,VALM,"COL",3,0)="CLAIMED^42^10^AMT CL^^0"
 .S ^SD(409.61,VALM,"COL",4,0)="PAID^53^10^AMT PD^^0"
 .S ^SD(409.61,VALM,"COL",5,0)="CODE^62^4^CODE^^0"
 .S ^SD(409.61,VALM,"COL",6,0)="INVOICE^70^7^INV^^0"
 .S ^SD(409.61,VALM,"COL",7,0)="BATCH^75^5^BATCH^^0"
 .S ^SD(409.61,VALM,"COL","AIDENT",0,1)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,2)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,3)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,4)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,5)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,6)=""
 .S ^SD(409.61,VALM,"COL","AIDENT",0,7)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^FBPHON"
 .S ^SD(409.61,VALM,"HDR")="D HDR^FBPHON"
 .S ^SD(409.61,VALM,"HLP")="D HLP^FBPHON"
 .S ^SD(409.61,VALM,"INIT")="D START^FBPHON"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 K DIC,DIK,VALM,X,DA Q