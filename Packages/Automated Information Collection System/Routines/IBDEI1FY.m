IBDEI1FY ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.4)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.4,1407,0)
 ;;=OTHER^4^142
 ;;^UTILITY(U,$J,358.4,1408,0)
 ;;=CASE MANAGEMENT SERVICES^1^142
 ;;^UTILITY(U,$J,358.4,1409,0)
 ;;=HEALTH AND BEHAVIOR ASSESSMENT^3^142
 ;;^UTILITY(U,$J,358.4,1410,0)
 ;;=EDUCATION/TRAINING^2^142
 ;;^UTILITY(U,$J,358.4,1411,0)
 ;;=PSYCHIATRIC THERAPY^5^142
 ;;^UTILITY(U,$J,358.4,1412,0)
 ;;=NEW PATIENT^2^143
 ;;^UTILITY(U,$J,358.4,1413,0)
 ;;=ESTABLISHED PATIENT^1^143
 ;;^UTILITY(U,$J,358.4,1414,0)
 ;;=CONSULTATIONS^3^143
 ;;^UTILITY(U,$J,358.4,1415,0)
 ;;=NEURO^4^144
 ;;^UTILITY(U,$J,358.4,1416,0)
 ;;=MENTAL HEALTH^3^144
 ;;^UTILITY(U,$J,358.4,1417,0)
 ;;=HISTORY OF ILLNESS^2^144
 ;;^UTILITY(U,$J,358.4,1418,0)
 ;;=PREVENTIVE HEALTH/SCREENINGS^5^144
 ;;^UTILITY(U,$J,358.4,1419,0)
 ;;=SIGNS, SYMPTOMS, CONDITIONS^6^144
 ;;^UTILITY(U,$J,358.4,1420,0)
 ;;=OTHER REASONS^8^144
 ;;^UTILITY(U,$J,358.4,1421,0)
 ;;=TBI SCREENING^7^144
 ;;^UTILITY(U,$J,358.4,1422,0)
 ;;=CAUSES OF INJURY-SECONDARY^1^144
 ;;^UTILITY(U,$J,358.4,1423,0)
 ;;=IMMUNIZATIONS^5^145
 ;;^UTILITY(U,$J,358.4,1424,0)
 ;;=COUNSELING^1^145
 ;;^UTILITY(U,$J,358.4,1425,0)
 ;;=EDUCATION^2^145
 ;;^UTILITY(U,$J,358.4,1426,0)
 ;;=EVALUATIONS^3^145
 ;;^UTILITY(U,$J,358.4,1427,0)
 ;;=IMMUNIZATION ADMINISTRATION^4^145
 ;;^UTILITY(U,$J,358.4,1428,0)
 ;;=TREATMENT PROCEDURES^7^145
 ;;^UTILITY(U,$J,358.4,1429,0)
 ;;=INJECTIONS^6^145
 ;;^UTILITY(U,$J,358.4,1430,0)
 ;;=NEW PATIENT^2^146
 ;;^UTILITY(U,$J,358.4,1431,0)
 ;;=ESTABLISHED PATIENT^1^146
 ;;^UTILITY(U,$J,358.4,1432,0)
 ;;=CONSULTATIONS^3^146
 ;;^UTILITY(U,$J,358.4,1433,0)
 ;;=TELEHEALTH FACILITY FEE^1^147
 ;;^UTILITY(U,$J,358.4,1434,0)
 ;;=ABRASION w/o INFECTION^1^148
 ;;^UTILITY(U,$J,358.4,1435,0)
 ;;=ABRASION w/ INFECTION^2^148
 ;;^UTILITY(U,$J,358.4,1436,0)
 ;;=ABSCESS/CELLULITIS^3^148
 ;;^UTILITY(U,$J,358.4,1437,0)
 ;;=ACNE^4^148
 ;;^UTILITY(U,$J,358.4,1438,0)
 ;;=ALOPEICA^5^148
 ;;^UTILITY(U,$J,358.4,1439,0)
 ;;=BURNS^6^148
 ;;^UTILITY(U,$J,358.4,1440,0)
 ;;=CANDIDIASIS^7^148
 ;;^UTILITY(U,$J,358.4,1441,0)
 ;;=CELLULITIS^8^148
 ;;^UTILITY(U,$J,358.4,1442,0)
 ;;=DERMATITIS^9^148
 ;;^UTILITY(U,$J,358.4,1443,0)
 ;;=DERMATOPHYTOSIS^10^148
 ;;^UTILITY(U,$J,358.4,1444,0)
 ;;=ECZEMA^11^148
 ;;^UTILITY(U,$J,358.4,1445,0)
 ;;=EDEMA^12^148
 ;;^UTILITY(U,$J,358.4,1446,0)
 ;;=ERYTHEMA^13^148
 ;;^UTILITY(U,$J,358.4,1447,0)
 ;;=EXPOSURE TO HEALTH HAZARDS^14^148
 ;;^UTILITY(U,$J,358.4,1448,0)
 ;;=FOLLICULITIS^15^148
 ;;^UTILITY(U,$J,358.4,1449,0)
 ;;=FURUNCLE^16^148
 ;;^UTILITY(U,$J,358.4,1450,0)
 ;;=GRANULOMA^17^148
 ;;^UTILITY(U,$J,358.4,1451,0)
 ;;=HERPES^35^148
 ;;^UTILITY(U,$J,358.4,1452,0)
 ;;=HISTORY^36^148
 ;;^UTILITY(U,$J,358.4,1453,0)
 ;;=ICHTHYOSIS^38^148
 ;;^UTILITY(U,$J,358.4,1454,0)
 ;;=INSECT BITE w/o INFECTION^39^148
 ;;^UTILITY(U,$J,358.4,1455,0)
 ;;=INSECT BITE w/INFECTION^40^148
 ;;^UTILITY(U,$J,358.4,1456,0)
 ;;=KERATOSIS^42^148
 ;;^UTILITY(U,$J,358.4,1457,0)
 ;;=LACERATION^44^148
 ;;^UTILITY(U,$J,358.4,1458,0)
 ;;=LESION^46^148
 ;;^UTILITY(U,$J,358.4,1459,0)
 ;;=LICHENIFICATION^47^148
 ;;^UTILITY(U,$J,358.4,1460,0)
 ;;=LUPUS^48^148
 ;;^UTILITY(U,$J,358.4,1461,0)
 ;;=MELANOMA^50^148
 ;;^UTILITY(U,$J,358.4,1462,0)
 ;;=NAIL DISEASE^53^148
 ;;^UTILITY(U,$J,358.4,1463,0)
 ;;=NEOPLASM-BENIGN^54^148
 ;;^UTILITY(U,$J,358.4,1464,0)
 ;;=NEOPLASM-IN SITU^56^148
 ;;^UTILITY(U,$J,358.4,1465,0)
 ;;=NEOPLASM-OTHER^57^148
 ;;^UTILITY(U,$J,358.4,1466,0)
 ;;=NEURODERMATITIS^58^148
 ;;^UTILITY(U,$J,358.4,1467,0)
 ;;=PEDICULOSIS^61^148
 ;;^UTILITY(U,$J,358.4,1468,0)
 ;;=PITYRIASIS^62^148
 ;;^UTILITY(U,$J,358.4,1469,0)
 ;;=PRURITUS^63^148
 ;;^UTILITY(U,$J,358.4,1470,0)
 ;;=PSORIASIS^64^148