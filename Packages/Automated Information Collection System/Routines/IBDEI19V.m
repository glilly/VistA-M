IBDEI19V ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,22775,1,4,0)
 ;;=4^292.85
 ;;^UTILITY(U,$J,358.3,22775,1,5,0)
 ;;=5^Drug Induced Sleep D/O
 ;;^UTILITY(U,$J,358.3,22775,2)
 ;;=^332751
 ;;^UTILITY(U,$J,358.3,22776,0)
 ;;=300.11^^141^1404^1
 ;;^UTILITY(U,$J,358.3,22776,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22776,1,4,0)
 ;;=4^300.11
 ;;^UTILITY(U,$J,358.3,22776,1,5,0)
 ;;=5^Conversion Disorder
 ;;^UTILITY(U,$J,358.3,22776,2)
 ;;=^28139
 ;;^UTILITY(U,$J,358.3,22777,0)
 ;;=300.7^^141^1404^2
 ;;^UTILITY(U,$J,358.3,22777,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22777,1,4,0)
 ;;=4^300.7
 ;;^UTILITY(U,$J,358.3,22777,1,5,0)
 ;;=5^Hyponchondriasis
 ;;^UTILITY(U,$J,358.3,22777,2)
 ;;=^60556
 ;;^UTILITY(U,$J,358.3,22778,0)
 ;;=300.81^^141^1404^3
 ;;^UTILITY(U,$J,358.3,22778,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22778,1,4,0)
 ;;=4^300.81
 ;;^UTILITY(U,$J,358.3,22778,1,5,0)
 ;;=5^Somatization Disorder
 ;;^UTILITY(U,$J,358.3,22778,2)
 ;;=^112280
 ;;^UTILITY(U,$J,358.3,22779,0)
 ;;=303.90^^141^1405^12
 ;;^UTILITY(U,$J,358.3,22779,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22779,1,4,0)
 ;;=4^303.90
 ;;^UTILITY(U,$J,358.3,22779,1,5,0)
 ;;=5^Alcohol Dependence
 ;;^UTILITY(U,$J,358.3,22779,2)
 ;;=^268187
 ;;^UTILITY(U,$J,358.3,22780,0)
 ;;=303.93^^141^1405^11
 ;;^UTILITY(U,$J,358.3,22780,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22780,1,4,0)
 ;;=4^303.93
 ;;^UTILITY(U,$J,358.3,22780,1,5,0)
 ;;=5^Alcohol Dep-Remission
 ;;^UTILITY(U,$J,358.3,22780,2)
 ;;=^268190
 ;;^UTILITY(U,$J,358.3,22781,0)
 ;;=305.00^^141^1405^9
 ;;^UTILITY(U,$J,358.3,22781,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22781,1,4,0)
 ;;=4^305.00
 ;;^UTILITY(U,$J,358.3,22781,1,5,0)
 ;;=5^Alcohol Abuse
 ;;^UTILITY(U,$J,358.3,22781,2)
 ;;=^268227
 ;;^UTILITY(U,$J,358.3,22782,0)
 ;;=305.03^^141^1405^10
 ;;^UTILITY(U,$J,358.3,22782,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22782,1,4,0)
 ;;=4^305.03
 ;;^UTILITY(U,$J,358.3,22782,1,5,0)
 ;;=5^Alcohol Abuse-Remission
 ;;^UTILITY(U,$J,358.3,22782,2)
 ;;=^268230
 ;;^UTILITY(U,$J,358.3,22783,0)
 ;;=304.00^^141^1405^74
 ;;^UTILITY(U,$J,358.3,22783,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22783,1,4,0)
 ;;=4^304.00
 ;;^UTILITY(U,$J,358.3,22783,1,5,0)
 ;;=5^Opioid Dependence
 ;;^UTILITY(U,$J,358.3,22783,2)
 ;;=^81364
 ;;^UTILITY(U,$J,358.3,22784,0)
 ;;=304.23^^141^1405^72
 ;;^UTILITY(U,$J,358.3,22784,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22784,1,4,0)
 ;;=4^304.23
 ;;^UTILITY(U,$J,358.3,22784,1,5,0)
 ;;=5^Opioid Dep-Remission
 ;;^UTILITY(U,$J,358.3,22784,2)
 ;;=^268200
 ;;^UTILITY(U,$J,358.3,22785,0)
 ;;=305.50^^141^1405^68
 ;;^UTILITY(U,$J,358.3,22785,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22785,1,4,0)
 ;;=4^305.50
 ;;^UTILITY(U,$J,358.3,22785,1,5,0)
 ;;=5^Opioid Abuse
 ;;^UTILITY(U,$J,358.3,22785,2)
 ;;=^85868
 ;;^UTILITY(U,$J,358.3,22786,0)
 ;;=305.53^^141^1405^71
 ;;^UTILITY(U,$J,358.3,22786,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22786,1,4,0)
 ;;=4^305.53
 ;;^UTILITY(U,$J,358.3,22786,1,5,0)
 ;;=5^Opioid Abuse-Remission
 ;;^UTILITY(U,$J,358.3,22786,2)
 ;;=^268246
 ;;^UTILITY(U,$J,358.3,22787,0)
 ;;=304.10^^141^1405^31
 ;;^UTILITY(U,$J,358.3,22787,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22787,1,4,0)
 ;;=4^304.10
 ;;^UTILITY(U,$J,358.3,22787,1,5,0)
 ;;=5^Anxiolytic Dependence
 ;;^UTILITY(U,$J,358.3,22787,2)
 ;;=^268194
 ;;^UTILITY(U,$J,358.3,22788,0)
 ;;=304.13^^141^1405^28
 ;;^UTILITY(U,$J,358.3,22788,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,22788,1,4,0)
 ;;=4^304.13
 ;;^UTILITY(U,$J,358.3,22788,1,5,0)
 ;;=5^Anxiolytic Dep-Remis
 ;;^UTILITY(U,$J,358.3,22788,2)
 ;;=^268197
 ;;^UTILITY(U,$J,358.3,22789,0)
 ;;=305.40^^141^1405^24