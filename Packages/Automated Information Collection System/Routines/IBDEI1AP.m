IBDEI1AP ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,23194,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23194,1,2,0)
 ;;=2^90472
 ;;^UTILITY(U,$J,358.3,23194,1,3,0)
 ;;=3^Immunization Admin,Ea Addl
 ;;^UTILITY(U,$J,358.3,23195,0)
 ;;=97034^^145^1428^1^^^^1
 ;;^UTILITY(U,$J,358.3,23195,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23195,1,2,0)
 ;;=2^97034
 ;;^UTILITY(U,$J,358.3,23195,1,3,0)
 ;;=3^Contrast Baths Ea 15Min
 ;;^UTILITY(U,$J,358.3,23196,0)
 ;;=97014^^145^1428^2^^^^1
 ;;^UTILITY(U,$J,358.3,23196,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23196,1,2,0)
 ;;=2^97014
 ;;^UTILITY(U,$J,358.3,23196,1,3,0)
 ;;=3^Electrical Stimulation
 ;;^UTILITY(U,$J,358.3,23197,0)
 ;;=97530^^145^1428^3^^^^1
 ;;^UTILITY(U,$J,358.3,23197,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23197,1,2,0)
 ;;=2^97530
 ;;^UTILITY(U,$J,358.3,23197,1,3,0)
 ;;=3^Functional Activities
 ;;^UTILITY(U,$J,358.3,23198,0)
 ;;=97116^^145^1428^4^^^^1
 ;;^UTILITY(U,$J,358.3,23198,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23198,1,2,0)
 ;;=2^97116
 ;;^UTILITY(U,$J,358.3,23198,1,3,0)
 ;;=3^Gait Training
 ;;^UTILITY(U,$J,358.3,23199,0)
 ;;=97010^^145^1428^5^^^^1
 ;;^UTILITY(U,$J,358.3,23199,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23199,1,2,0)
 ;;=2^97010
 ;;^UTILITY(U,$J,358.3,23199,1,3,0)
 ;;=3^Hot/Cold Therapies
 ;;^UTILITY(U,$J,358.3,23200,0)
 ;;=97033^^145^1428^6^^^^1
 ;;^UTILITY(U,$J,358.3,23200,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23200,1,2,0)
 ;;=2^97033
 ;;^UTILITY(U,$J,358.3,23200,1,3,0)
 ;;=3^Iontophoresis Ea 15Min
 ;;^UTILITY(U,$J,358.3,23201,0)
 ;;=97530^^145^1428^7^^^^1
 ;;^UTILITY(U,$J,358.3,23201,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23201,1,2,0)
 ;;=2^97530
 ;;^UTILITY(U,$J,358.3,23201,1,3,0)
 ;;=3^Kinetic Therapy Ea 15Min
 ;;^UTILITY(U,$J,358.3,23202,0)
 ;;=97140^^145^1428^8^^^^1
 ;;^UTILITY(U,$J,358.3,23202,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23202,1,2,0)
 ;;=2^97140
 ;;^UTILITY(U,$J,358.3,23202,1,3,0)
 ;;=3^Manipulation/Mobilization Ea 15Min
 ;;^UTILITY(U,$J,358.3,23203,0)
 ;;=97112^^145^1428^9^^^^1
 ;;^UTILITY(U,$J,358.3,23203,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23203,1,2,0)
 ;;=2^97112
 ;;^UTILITY(U,$J,358.3,23203,1,3,0)
 ;;=3^Neuromuscular Re-Ed
 ;;^UTILITY(U,$J,358.3,23204,0)
 ;;=97039^^145^1428^10^^^^1
 ;;^UTILITY(U,$J,358.3,23204,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23204,1,2,0)
 ;;=2^97039
 ;;^UTILITY(U,$J,358.3,23204,1,3,0)
 ;;=3^Physical Therapy Treatment
 ;;^UTILITY(U,$J,358.3,23205,0)
 ;;=97124^^145^1428^11^^^^1
 ;;^UTILITY(U,$J,358.3,23205,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23205,1,2,0)
 ;;=2^97124
 ;;^UTILITY(U,$J,358.3,23205,1,3,0)
 ;;=3^Soft Tissue Mobilization
 ;;^UTILITY(U,$J,358.3,23206,0)
 ;;=97110^^145^1428^12^^^^1
 ;;^UTILITY(U,$J,358.3,23206,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23206,1,2,0)
 ;;=2^97110
 ;;^UTILITY(U,$J,358.3,23206,1,3,0)
 ;;=3^Therapeutic Ex/Record/Flex
 ;;^UTILITY(U,$J,358.3,23207,0)
 ;;=97035^^145^1428^13^^^^1
 ;;^UTILITY(U,$J,358.3,23207,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23207,1,2,0)
 ;;=2^97035
 ;;^UTILITY(U,$J,358.3,23207,1,3,0)
 ;;=3^Ultrasound Ea 15Min
 ;;^UTILITY(U,$J,358.3,23208,0)
 ;;=20552^^145^1429^5^^^^1
 ;;^UTILITY(U,$J,358.3,23208,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23208,1,2,0)
 ;;=2^20552
 ;;^UTILITY(U,$J,358.3,23208,1,3,0)
 ;;=3^Trigger Point Inj,1/2 Muscles
 ;;^UTILITY(U,$J,358.3,23209,0)
 ;;=20553^^145^1429^6^^^^1
 ;;^UTILITY(U,$J,358.3,23209,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,23209,1,2,0)
 ;;=2^20553
 ;;^UTILITY(U,$J,358.3,23209,1,3,0)
 ;;=3^Trigger Point Inj,3 or More Muscles
 ;;^UTILITY(U,$J,358.3,23210,0)
 ;;=64405^^145^1429^4^^^^1