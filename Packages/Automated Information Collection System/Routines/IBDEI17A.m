IBDEI17A ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,21485,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21485,1,4,0)
 ;;=4^789.30
 ;;^UTILITY(U,$J,358.3,21485,1,5,0)
 ;;=5^Pelvic Mass
 ;;^UTILITY(U,$J,358.3,21485,2)
 ;;=Pelvic Mass^917
 ;;^UTILITY(U,$J,358.3,21486,0)
 ;;=622.7^^133^1316^47
 ;;^UTILITY(U,$J,358.3,21486,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21486,1,4,0)
 ;;=4^622.7
 ;;^UTILITY(U,$J,358.3,21486,1,5,0)
 ;;=5^Polyp Of Cervix
 ;;^UTILITY(U,$J,358.3,21486,2)
 ;;=Polyp of Cervix^79612
 ;;^UTILITY(U,$J,358.3,21487,0)
 ;;=627.1^^133^1316^48
 ;;^UTILITY(U,$J,358.3,21487,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21487,1,4,0)
 ;;=4^627.1
 ;;^UTILITY(U,$J,358.3,21487,1,5,0)
 ;;=5^Postmenopausal Bleeding
 ;;^UTILITY(U,$J,358.3,21487,2)
 ;;=^97040
 ;;^UTILITY(U,$J,358.3,21488,0)
 ;;=V24.2^^133^1316^49
 ;;^UTILITY(U,$J,358.3,21488,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21488,1,4,0)
 ;;=4^V24.2
 ;;^UTILITY(U,$J,358.3,21488,1,5,0)
 ;;=5^Postpartum
 ;;^UTILITY(U,$J,358.3,21488,2)
 ;;=Postpartum^114052
 ;;^UTILITY(U,$J,358.3,21489,0)
 ;;=V22.2^^133^1316^50
 ;;^UTILITY(U,$J,358.3,21489,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21489,1,4,0)
 ;;=4^V22.2
 ;;^UTILITY(U,$J,358.3,21489,1,5,0)
 ;;=5^Pregnancy Status
 ;;^UTILITY(U,$J,358.3,21489,2)
 ;;=Pregnancy Status^97923
 ;;^UTILITY(U,$J,358.3,21490,0)
 ;;=627.0^^133^1316^51
 ;;^UTILITY(U,$J,358.3,21490,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21490,1,4,0)
 ;;=4^627.0
 ;;^UTILITY(U,$J,358.3,21490,1,5,0)
 ;;=5^Premenopausal Menorrhagia
 ;;^UTILITY(U,$J,358.3,21490,2)
 ;;=^270575
 ;;^UTILITY(U,$J,358.3,21491,0)
 ;;=625.4^^133^1316^52
 ;;^UTILITY(U,$J,358.3,21491,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21491,1,4,0)
 ;;=4^625.4
 ;;^UTILITY(U,$J,358.3,21491,1,5,0)
 ;;=5^Premenstrual Tension
 ;;^UTILITY(U,$J,358.3,21491,2)
 ;;=^98014
 ;;^UTILITY(U,$J,358.3,21492,0)
 ;;=302.70^^133^1316^55
 ;;^UTILITY(U,$J,358.3,21492,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21492,1,4,0)
 ;;=4^302.70
 ;;^UTILITY(U,$J,358.3,21492,1,5,0)
 ;;=5^Sexual Dysfunction, Psychosexual
 ;;^UTILITY(U,$J,358.3,21492,2)
 ;;=^100647
 ;;^UTILITY(U,$J,358.3,21493,0)
 ;;=599.0^^133^1316^59
 ;;^UTILITY(U,$J,358.3,21493,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21493,1,4,0)
 ;;=4^599.0
 ;;^UTILITY(U,$J,358.3,21493,1,5,0)
 ;;=5^Urinary Tract Infection
 ;;^UTILITY(U,$J,358.3,21493,2)
 ;;=^124436
 ;;^UTILITY(U,$J,358.3,21494,0)
 ;;=218.9^^133^1316^60
 ;;^UTILITY(U,$J,358.3,21494,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21494,1,4,0)
 ;;=4^218.9
 ;;^UTILITY(U,$J,358.3,21494,1,5,0)
 ;;=5^Uterine Fibroids
 ;;^UTILITY(U,$J,358.3,21494,2)
 ;;=Uterine Fibroids^68944
 ;;^UTILITY(U,$J,358.3,21495,0)
 ;;=618.1^^133^1316^61
 ;;^UTILITY(U,$J,358.3,21495,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21495,1,4,0)
 ;;=4^618.1
 ;;^UTILITY(U,$J,358.3,21495,1,5,0)
 ;;=5^Uterine Prolapse
 ;;^UTILITY(U,$J,358.3,21495,2)
 ;;=Uterine Prolapse^124773
 ;;^UTILITY(U,$J,358.3,21496,0)
 ;;=623.0^^133^1316^62
 ;;^UTILITY(U,$J,358.3,21496,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21496,1,4,0)
 ;;=4^623.0
 ;;^UTILITY(U,$J,358.3,21496,1,5,0)
 ;;=5^Vaginal Dysplasia
 ;;^UTILITY(U,$J,358.3,21496,2)
 ;;=^270536
 ;;^UTILITY(U,$J,358.3,21497,0)
 ;;=625.1^^133^1316^63
 ;;^UTILITY(U,$J,358.3,21497,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21497,1,4,0)
 ;;=4^625.1
 ;;^UTILITY(U,$J,358.3,21497,1,5,0)
 ;;=5^Vaginismus
 ;;^UTILITY(U,$J,358.3,21497,2)
 ;;=Vaginismus^125225
 ;;^UTILITY(U,$J,358.3,21498,0)
 ;;=616.10^^133^1316^65
 ;;^UTILITY(U,$J,358.3,21498,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,21498,1,4,0)
 ;;=4^616.10