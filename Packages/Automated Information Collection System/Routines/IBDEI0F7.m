IBDEI0F7 ; ; 20-FEB-2013
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;FEB 20, 2013
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,20402,1,3,0)
 ;;=3^Aftercare, S/P Knee Replacement
 ;;^UTILITY(U,$J,358.3,20402,1,4,0)
 ;;=4^V54.81
 ;;^UTILITY(U,$J,358.3,20402,2)
 ;;=Aftercare, S/P Knee Replacement^295514^V43.65
 ;;^UTILITY(U,$J,358.3,20403,0)
 ;;=V54.89^^152^1326^5
 ;;^UTILITY(U,$J,358.3,20403,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20403,1,3,0)
 ;;=3^Aftercare, Other Ortho
 ;;^UTILITY(U,$J,358.3,20403,1,4,0)
 ;;=4^V54.89
 ;;^UTILITY(U,$J,358.3,20403,2)
 ;;=Aftercare, Other Ortho^295514
 ;;^UTILITY(U,$J,358.3,20404,0)
 ;;=V54.01^^152^1326^10
 ;;^UTILITY(U,$J,358.3,20404,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20404,1,3,0)
 ;;=3^Removal of Int Fixation Dev
 ;;^UTILITY(U,$J,358.3,20404,1,4,0)
 ;;=4^V54.01
 ;;^UTILITY(U,$J,358.3,20404,2)
 ;;=^329975
 ;;^UTILITY(U,$J,358.3,20405,0)
 ;;=V58.32^^152^1327^1
 ;;^UTILITY(U,$J,358.3,20405,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20405,1,3,0)
 ;;=3^Removal of Sutures
 ;;^UTILITY(U,$J,358.3,20405,1,4,0)
 ;;=4^V58.32
 ;;^UTILITY(U,$J,358.3,20405,2)
 ;;=^334217
 ;;^UTILITY(U,$J,358.3,20406,0)
 ;;=V58.31^^152^1327^2
 ;;^UTILITY(U,$J,358.3,20406,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,20406,1,3,0)
 ;;=3^Removal/Change Surgical Dressing
 ;;^UTILITY(U,$J,358.3,20406,1,4,0)
 ;;=4^V58.31
 ;;^UTILITY(U,$J,358.3,20406,2)
 ;;=^334216
 ;;^UTILITY(U,$J,358.3,20407,0)
 ;;=99221^^153^1328^1
 ;;^UTILITY(U,$J,358.3,20407,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20407,1,1,0)
 ;;=1^Detailed;Low Complexity
 ;;^UTILITY(U,$J,358.3,20407,1,2,0)
 ;;=2^99221
 ;;^UTILITY(U,$J,358.3,20408,0)
 ;;=99222^^153^1328^2
 ;;^UTILITY(U,$J,358.3,20408,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20408,1,1,0)
 ;;=1^Comp;Mod Complexity
 ;;^UTILITY(U,$J,358.3,20408,1,2,0)
 ;;=2^99222
 ;;^UTILITY(U,$J,358.3,20409,0)
 ;;=99223^^153^1328^3
 ;;^UTILITY(U,$J,358.3,20409,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20409,1,1,0)
 ;;=1^Comp;High Complexity
 ;;^UTILITY(U,$J,358.3,20409,1,2,0)
 ;;=2^99223
 ;;^UTILITY(U,$J,358.3,20410,0)
 ;;=99218^^153^1329^1
 ;;^UTILITY(U,$J,358.3,20410,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20410,1,1,0)
 ;;=1^Detailed;Low Complexity
 ;;^UTILITY(U,$J,358.3,20410,1,2,0)
 ;;=2^99218
 ;;^UTILITY(U,$J,358.3,20411,0)
 ;;=99219^^153^1329^2
 ;;^UTILITY(U,$J,358.3,20411,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20411,1,1,0)
 ;;=1^Comp;Mod Complexity
 ;;^UTILITY(U,$J,358.3,20411,1,2,0)
 ;;=2^99219
 ;;^UTILITY(U,$J,358.3,20412,0)
 ;;=99220^^153^1329^3
 ;;^UTILITY(U,$J,358.3,20412,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20412,1,1,0)
 ;;=1^Comp;High Complexity
 ;;^UTILITY(U,$J,358.3,20412,1,2,0)
 ;;=2^99220
 ;;^UTILITY(U,$J,358.3,20413,0)
 ;;=99251^^153^1330^1
 ;;^UTILITY(U,$J,358.3,20413,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20413,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,20413,1,2,0)
 ;;=2^99251
 ;;^UTILITY(U,$J,358.3,20414,0)
 ;;=99252^^153^1330^2
 ;;^UTILITY(U,$J,358.3,20414,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20414,1,1,0)
 ;;=1^Exp Problem Focused
 ;;^UTILITY(U,$J,358.3,20414,1,2,0)
 ;;=2^99252
 ;;^UTILITY(U,$J,358.3,20415,0)
 ;;=99253^^153^1330^3
 ;;^UTILITY(U,$J,358.3,20415,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20415,1,1,0)
 ;;=1^Detailed;Low Complexity
 ;;^UTILITY(U,$J,358.3,20415,1,2,0)
 ;;=2^99253
 ;;^UTILITY(U,$J,358.3,20416,0)
 ;;=99254^^153^1330^4
 ;;^UTILITY(U,$J,358.3,20416,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20416,1,1,0)
 ;;=1^Comp;Mod Complexity
 ;;^UTILITY(U,$J,358.3,20416,1,2,0)
 ;;=2^99254
 ;;^UTILITY(U,$J,358.3,20417,0)
 ;;=99255^^153^1330^5
 ;;^UTILITY(U,$J,358.3,20417,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20417,1,1,0)
 ;;=1^Comp;High Complexity
 ;;^UTILITY(U,$J,358.3,20417,1,2,0)
 ;;=2^99255
 ;;^UTILITY(U,$J,358.3,20418,0)
 ;;=99231^^153^1331^1
 ;;^UTILITY(U,$J,358.3,20418,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20418,1,1,0)
 ;;=1^Problem Focused
 ;;^UTILITY(U,$J,358.3,20418,1,2,0)
 ;;=2^99231
 ;;^UTILITY(U,$J,358.3,20419,0)
 ;;=99232^^153^1331^2
 ;;^UTILITY(U,$J,358.3,20419,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20419,1,1,0)
 ;;=1^Expanded Problem Focused
 ;;^UTILITY(U,$J,358.3,20419,1,2,0)
 ;;=2^99232
 ;;^UTILITY(U,$J,358.3,20420,0)
 ;;=99233^^153^1331^3
 ;;^UTILITY(U,$J,358.3,20420,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20420,1,1,0)
 ;;=1^Detailed
 ;;^UTILITY(U,$J,358.3,20420,1,2,0)
 ;;=2^99233
 ;;^UTILITY(U,$J,358.3,20421,0)
 ;;=99238^^153^1332^1
 ;;^UTILITY(U,$J,358.3,20421,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20421,1,1,0)
 ;;=1^Discharge Day Mgmt < 30min
 ;;^UTILITY(U,$J,358.3,20421,1,2,0)
 ;;=2^99238
 ;;^UTILITY(U,$J,358.3,20422,0)
 ;;=99239^^153^1332^2
 ;;^UTILITY(U,$J,358.3,20422,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,20422,1,1,0)
 ;;=1^Discharge Day Mgmt > 30min
 ;;^UTILITY(U,$J,358.3,20422,1,2,0)
 ;;=2^99239
 ;;^UTILITY(U,$J,358.3,20423,0)
 ;;=20600^^154^1333^5^^^^1
 ;;^UTILITY(U,$J,358.3,20423,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20423,1,2,0)
 ;;=2^Drain/Inject, Joint/Bursa
 ;;^UTILITY(U,$J,358.3,20423,1,3,0)
 ;;=3^20600
 ;;^UTILITY(U,$J,358.3,20424,0)
 ;;=20605^^154^1333^1^^^^1
 ;;^UTILITY(U,$J,358.3,20424,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20424,1,2,0)
 ;;=2^Asp/Inj Interm Jt(Ac/Wrist/Ankle
 ;;^UTILITY(U,$J,358.3,20424,1,3,0)
 ;;=3^20605
 ;;^UTILITY(U,$J,358.3,20425,0)
 ;;=20610^^154^1333^2^^^^1
 ;;^UTILITY(U,$J,358.3,20425,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20425,1,2,0)
 ;;=2^Asp/Inj Maj Jt (Should/Hip/Knee
 ;;^UTILITY(U,$J,358.3,20425,1,3,0)
 ;;=3^20610
 ;;^UTILITY(U,$J,358.3,20426,0)
 ;;=20550^^154^1333^6^^^^1
 ;;^UTILITY(U,$J,358.3,20426,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20426,1,2,0)
 ;;=2^Inject Tendon/Ligament/Cyst 
 ;;^UTILITY(U,$J,358.3,20426,1,3,0)
 ;;=3^20550
 ;;^UTILITY(U,$J,358.3,20427,0)
 ;;=J1100^^154^1333^4^^^^1
 ;;^UTILITY(U,$J,358.3,20427,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20427,1,2,0)
 ;;=2^Dexamethasone Sodium Phos 1 mg
 ;;^UTILITY(U,$J,358.3,20427,1,3,0)
 ;;=3^J1100
 ;;^UTILITY(U,$J,358.3,20428,0)
 ;;=J0800^^154^1333^3^^^^1
 ;;^UTILITY(U,$J,358.3,20428,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20428,1,2,0)
 ;;=2^Corticotropin Inj up to 40 units
 ;;^UTILITY(U,$J,358.3,20428,1,3,0)
 ;;=3^J0800
 ;;^UTILITY(U,$J,358.3,20429,0)
 ;;=J1040^^154^1333^7^^^^1
 ;;^UTILITY(U,$J,358.3,20429,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20429,1,2,0)
 ;;=2^Methylprednisolone 80 Mg Inj
 ;;^UTILITY(U,$J,358.3,20429,1,3,0)
 ;;=3^J1040
 ;;^UTILITY(U,$J,358.3,20430,0)
 ;;=97597^^154^1334^1^^^^1
 ;;^UTILITY(U,$J,358.3,20430,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20430,1,2,0)
 ;;=2^Active Wound Care/20 Cm Or <
 ;;^UTILITY(U,$J,358.3,20430,1,3,0)
 ;;=3^97597
 ;;^UTILITY(U,$J,358.3,20431,0)
 ;;=97598^^154^1334^2^^^^1
 ;;^UTILITY(U,$J,358.3,20431,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20431,1,2,0)
 ;;=2^Active Wound Care each adtl 20 Cm
 ;;^UTILITY(U,$J,358.3,20431,1,3,0)
 ;;=3^97598
 ;;^UTILITY(U,$J,358.3,20432,0)
 ;;=97605^^154^1334^6^^^^1
 ;;^UTILITY(U,$J,358.3,20432,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20432,1,2,0)
 ;;=2^Neg Press Wound Tx < 50 Cm
 ;;^UTILITY(U,$J,358.3,20432,1,3,0)
 ;;=3^97605
 ;;^UTILITY(U,$J,358.3,20433,0)
 ;;=97606^^154^1334^7^^^^1
 ;;^UTILITY(U,$J,358.3,20433,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20433,1,2,0)
 ;;=2^Neg Press Wound Tx, > 50 Cm
 ;;^UTILITY(U,$J,358.3,20433,1,3,0)
 ;;=3^97606
 ;;^UTILITY(U,$J,358.3,20434,0)
 ;;=97602^^154^1334^8^^^^1
 ;;^UTILITY(U,$J,358.3,20434,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20434,1,2,0)
 ;;=2^Remove Divit. Tissue w/o Anesth
 ;;^UTILITY(U,$J,358.3,20434,1,3,0)
 ;;=3^97602
 ;;^UTILITY(U,$J,358.3,20435,0)
 ;;=G0281^^154^1334^4^^^^1
 ;;^UTILITY(U,$J,358.3,20435,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20435,1,2,0)
 ;;=2^Electrical Stim,Wound Care
 ;;^UTILITY(U,$J,358.3,20435,1,3,0)
 ;;=3^G0281
 ;;^UTILITY(U,$J,358.3,20436,0)
 ;;=G0283^^154^1334^3^^^^1
 ;;^UTILITY(U,$J,358.3,20436,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20436,1,2,0)
 ;;=2^Electrical Stim,Oth than Wnd Care
 ;;^UTILITY(U,$J,358.3,20436,1,3,0)
 ;;=3^G0283
 ;;^UTILITY(U,$J,358.3,20437,0)
 ;;=G0329^^154^1334^5^^^^1
 ;;^UTILITY(U,$J,358.3,20437,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20437,1,2,0)
 ;;=2^Electromagnetic Therapy,Wound Care
 ;;^UTILITY(U,$J,358.3,20437,1,3,0)
 ;;=3^G0329
 ;;^UTILITY(U,$J,358.3,20438,0)
 ;;=95933^^154^1335^1^^^^1
 ;;^UTILITY(U,$J,358.3,20438,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20438,1,2,0)
 ;;=2^BLINK REFLEX TEST
 ;;^UTILITY(U,$J,358.3,20438,1,3,0)
 ;;=3^95933
 ;;^UTILITY(U,$J,358.3,20439,0)
 ;;=95925^^154^1335^2^^^^1
 ;;^UTILITY(U,$J,358.3,20439,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20439,1,2,0)
 ;;=2^SOMATOSENSORY TESTING
 ;;^UTILITY(U,$J,358.3,20439,1,3,0)
 ;;=3^95925
 ;;^UTILITY(U,$J,358.3,20440,0)
 ;;=99070^^154^1335^3^^^^1
 ;;^UTILITY(U,$J,358.3,20440,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20440,1,2,0)
 ;;=2^SPECIAL SUPPLIES
 ;;^UTILITY(U,$J,358.3,20440,1,3,0)
 ;;=3^99070
 ;;^UTILITY(U,$J,358.3,20441,0)
 ;;=97039^^154^1335^4^^^^1
 ;;^UTILITY(U,$J,358.3,20441,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20441,1,2,0)
 ;;=2^UNLISTED PT MODALITY
 ;;^UTILITY(U,$J,358.3,20441,1,3,0)
 ;;=3^97039
 ;;^UTILITY(U,$J,358.3,20442,0)
 ;;=97799^^154^1335^5^^^^1
 ;;^UTILITY(U,$J,358.3,20442,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20442,1,2,0)
 ;;=2^UNLISTED PROCEDURE
 ;;^UTILITY(U,$J,358.3,20442,1,3,0)
 ;;=3^97799
 ;;^UTILITY(U,$J,358.3,20443,0)
 ;;=95860^^154^1336^1^^^^1
 ;;^UTILITY(U,$J,358.3,20443,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20443,1,2,0)
 ;;=2^EMG 1 Limb
 ;;^UTILITY(U,$J,358.3,20443,1,3,0)
 ;;=3^95860
 ;;^UTILITY(U,$J,358.3,20444,0)
 ;;=95863^^154^1336^3^^^^1
 ;;^UTILITY(U,$J,358.3,20444,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,20444,1,2,0)
 ;;=2^EMG 3 Limbs
 ;;^UTILITY(U,$J,358.3,20444,1,3,0)
 ;;=3^95863
 ;;^UTILITY(U,$J,358.3,20445,0)
 ;;=95864^^154^1336^4^^^^1