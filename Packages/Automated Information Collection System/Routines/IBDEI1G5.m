IBDEI1G5 ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.5)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.5,22,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,22,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,23,0)
 ;;=SSN^26^4
 ;;^UTILITY(U,$J,358.5,23,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,23,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1
 ;;^UTILITY(U,$J,358.5,24,0)
 ;;=Age^26^5
 ;;^UTILITY(U,$J,358.5,24,2,0)
 ;;=^358.52^2^2
 ;;^UTILITY(U,$J,358.5,24,2,1,0)
 ;;=DOB:^^^60^1^1^65^12^1
 ;;^UTILITY(U,$J,358.5,24,2,2,0)
 ;;=Age:^^^78^1^1^83^3^2
 ;;^UTILITY(U,$J,358.5,25,0)
 ;;=HEADER^31
 ;;^UTILITY(U,$J,358.5,25,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,25,2,1,0)
 ;;=NATIONAL HT - SOCIAL WORK SERVICES^^^0^0
 ;;^UTILITY(U,$J,358.5,26,0)
 ;;=Patient name^32^3
 ;;^UTILITY(U,$J,358.5,26,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,26,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,27,0)
 ;;=SSN^32^4
 ;;^UTILITY(U,$J,358.5,27,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,27,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1
 ;;^UTILITY(U,$J,358.5,28,0)
 ;;=Age^32^5
 ;;^UTILITY(U,$J,358.5,28,2,0)
 ;;=^358.52^2^2
 ;;^UTILITY(U,$J,358.5,28,2,1,0)
 ;;=DOB:^^^60^1^1^65^12^1
 ;;^UTILITY(U,$J,358.5,28,2,2,0)
 ;;=Age:^^^78^1^1^83^3^2
 ;;^UTILITY(U,$J,358.5,29,0)
 ;;=HEADER^38
 ;;^UTILITY(U,$J,358.5,29,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,29,2,1,0)
 ;;=NATIONAL CHIROPRACTIC^^^0^0
 ;;^UTILITY(U,$J,358.5,30,0)
 ;;=Patient name^39^3
 ;;^UTILITY(U,$J,358.5,30,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,30,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,31,0)
 ;;=SSN^39^4
 ;;^UTILITY(U,$J,358.5,31,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,31,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1
 ;;^UTILITY(U,$J,358.5,32,0)
 ;;=Age^39^5
 ;;^UTILITY(U,$J,358.5,32,2,0)
 ;;=^358.52^2^2
 ;;^UTILITY(U,$J,358.5,32,2,1,0)
 ;;=DOB:^^^60^1^1^65^12^1
 ;;^UTILITY(U,$J,358.5,32,2,2,0)
 ;;=Age:^^^78^1^1^83^3^2
 ;;^UTILITY(U,$J,358.5,33,0)
 ;;=HEADER^41
 ;;^UTILITY(U,$J,358.5,33,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,33,2,1,0)
 ;;=NATIONAL CLC^^^0^0
 ;;^UTILITY(U,$J,358.5,34,0)
 ;;=Patient name^43^3
 ;;^UTILITY(U,$J,358.5,34,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,34,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,35,0)
 ;;=SSN^43^4
 ;;^UTILITY(U,$J,358.5,35,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,35,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1
 ;;^UTILITY(U,$J,358.5,36,0)
 ;;=Age^43^5
 ;;^UTILITY(U,$J,358.5,36,2,0)
 ;;=^358.52^2^2
 ;;^UTILITY(U,$J,358.5,36,2,1,0)
 ;;=DOB:^^^60^1^1^65^12^1
 ;;^UTILITY(U,$J,358.5,36,2,2,0)
 ;;=Age:^^^78^1^1^83^3^2
 ;;^UTILITY(U,$J,358.5,37,0)
 ;;=HEADER^47
 ;;^UTILITY(U,$J,358.5,37,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,37,2,1,0)
 ;;=NATIONAL COMP & PEN^^^0^0
 ;;^UTILITY(U,$J,358.5,38,0)
 ;;=Patient name^48^3
 ;;^UTILITY(U,$J,358.5,38,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,38,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,39,0)
 ;;=SSN^48^4
 ;;^UTILITY(U,$J,358.5,39,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,39,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1
 ;;^UTILITY(U,$J,358.5,40,0)
 ;;=Age^48^5
 ;;^UTILITY(U,$J,358.5,40,2,0)
 ;;=^358.52^2^2
 ;;^UTILITY(U,$J,358.5,40,2,1,0)
 ;;=DOB:^^^60^1^1^65^12^1
 ;;^UTILITY(U,$J,358.5,40,2,2,0)
 ;;=Age:^^^78^1^1^83^3^2
 ;;^UTILITY(U,$J,358.5,41,0)
 ;;=HEADER^54
 ;;^UTILITY(U,$J,358.5,41,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,41,2,1,0)
 ;;=NATIONAL CRITICAL CARE^^^0^0
 ;;^UTILITY(U,$J,358.5,42,0)
 ;;=Patient name^55^3
 ;;^UTILITY(U,$J,358.5,42,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,42,2,1,0)
 ;;=Name:^^^1^1^1^7^30^1
 ;;^UTILITY(U,$J,358.5,43,0)
 ;;=SSN^55^4
 ;;^UTILITY(U,$J,358.5,43,2,0)
 ;;=^358.52^1^1
 ;;^UTILITY(U,$J,358.5,43,2,1,0)
 ;;=SSN:^^^39^1^1^44^15^1