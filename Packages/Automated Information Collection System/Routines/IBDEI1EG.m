IBDEI1EG ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,25106,0)
 ;;=J1631^^167^1634^6^^^^1
 ;;^UTILITY(U,$J,358.3,25106,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25106,1,2,0)
 ;;=2^J1631
 ;;^UTILITY(U,$J,358.3,25106,1,3,0)
 ;;=3^Haldol, per 50 mg
 ;;^UTILITY(U,$J,358.3,25107,0)
 ;;=J2680^^167^1634^16^^^^1
 ;;^UTILITY(U,$J,358.3,25107,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25107,1,2,0)
 ;;=2^J2680
 ;;^UTILITY(U,$J,358.3,25107,1,3,0)
 ;;=3^Prolixin, per 25mg
 ;;^UTILITY(U,$J,358.3,25108,0)
 ;;=97545^^167^1634^30^^^^1
 ;;^UTILITY(U,$J,358.3,25108,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25108,1,2,0)
 ;;=2^97545
 ;;^UTILITY(U,$J,358.3,25108,1,3,0)
 ;;=3^Work Therapy, Init 2 hrs
 ;;^UTILITY(U,$J,358.3,25109,0)
 ;;=97546^^167^1634^29^^^^1
 ;;^UTILITY(U,$J,358.3,25109,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25109,1,2,0)
 ;;=2^97546
 ;;^UTILITY(U,$J,358.3,25109,1,3,0)
 ;;=3^Work Ther, addl hrs after 2
 ;;^UTILITY(U,$J,358.3,25110,0)
 ;;=97537^^167^1634^3^^^^1
 ;;^UTILITY(U,$J,358.3,25110,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25110,1,2,0)
 ;;=2^97537
 ;;^UTILITY(U,$J,358.3,25110,1,3,0)
 ;;=3^Community/Work Reintegration per 15 min
 ;;^UTILITY(U,$J,358.3,25111,0)
 ;;=97532^^167^1634^2^^^^1
 ;;^UTILITY(U,$J,358.3,25111,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25111,1,2,0)
 ;;=2^97532
 ;;^UTILITY(U,$J,358.3,25111,1,3,0)
 ;;=3^Cognitive Sk Dev (PhD/OT)per 15min
 ;;^UTILITY(U,$J,358.3,25112,0)
 ;;=97533^^167^1634^23^^^^1
 ;;^UTILITY(U,$J,358.3,25112,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25112,1,2,0)
 ;;=2^97533
 ;;^UTILITY(U,$J,358.3,25112,1,3,0)
 ;;=3^Sensory Integrat per 15 min
 ;;^UTILITY(U,$J,358.3,25113,0)
 ;;=97535^^167^1634^1^^^^1
 ;;^UTILITY(U,$J,358.3,25113,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25113,1,2,0)
 ;;=2^97535
 ;;^UTILITY(U,$J,358.3,25113,1,3,0)
 ;;=3^ADL Train per 15 min
 ;;^UTILITY(U,$J,358.3,25114,0)
 ;;=H0004^^167^1634^8^^^^1
 ;;^UTILITY(U,$J,358.3,25114,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25114,1,2,0)
 ;;=2^H0004
 ;;^UTILITY(U,$J,358.3,25114,1,3,0)
 ;;=3^Ind Counseling, per 15 min
 ;;^UTILITY(U,$J,358.3,25115,0)
 ;;=H0046^^167^1634^14^^^^1
 ;;^UTILITY(U,$J,358.3,25115,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25115,1,2,0)
 ;;=2^H0046
 ;;^UTILITY(U,$J,358.3,25115,1,3,0)
 ;;=3^PTSD Group
 ;;^UTILITY(U,$J,358.3,25116,0)
 ;;=96119^^167^1634^11^^^^1
 ;;^UTILITY(U,$J,358.3,25116,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25116,1,2,0)
 ;;=2^96119
 ;;^UTILITY(U,$J,358.3,25116,1,3,0)
 ;;=3^Neuropsych Test by tech,per hr
 ;;^UTILITY(U,$J,358.3,25117,0)
 ;;=96402^^167^1634^9^^^^1
 ;;^UTILITY(U,$J,358.3,25117,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25117,1,2,0)
 ;;=2^96402
 ;;^UTILITY(U,$J,358.3,25117,1,3,0)
 ;;=3^Injec,IM,anti-neplastic horm
 ;;^UTILITY(U,$J,358.3,25118,0)
 ;;=96102^^167^1634^20^^^^1
 ;;^UTILITY(U,$J,358.3,25118,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25118,1,2,0)
 ;;=2^96102
 ;;^UTILITY(U,$J,358.3,25118,1,3,0)
 ;;=3^Psych Testing by Tech,per hr
 ;;^UTILITY(U,$J,358.3,25119,0)
 ;;=96103^^167^1634^18^^^^1
 ;;^UTILITY(U,$J,358.3,25119,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25119,1,2,0)
 ;;=2^96103
 ;;^UTILITY(U,$J,358.3,25119,1,3,0)
 ;;=3^Psych Testing by Computer
 ;;^UTILITY(U,$J,358.3,25120,0)
 ;;=96120^^167^1634^12^^^^1
 ;;^UTILITY(U,$J,358.3,25120,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25120,1,2,0)
 ;;=2^96120
 ;;^UTILITY(U,$J,358.3,25120,1,3,0)
 ;;=3^Neuropsych Tst Admin w/Comp
 ;;^UTILITY(U,$J,358.3,25121,0)
 ;;=96125^^167^1634^24^^^^1
 ;;^UTILITY(U,$J,358.3,25121,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,25121,1,2,0)
 ;;=2^96125