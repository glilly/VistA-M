IBDEI1DX ; ; 12-AUG-2014
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;MAY 15, 2014
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24838,1,2,0)
 ;;=2^706.2
 ;;^UTILITY(U,$J,358.3,24838,1,5,0)
 ;;=5^SEBACEOUS CYST
 ;;^UTILITY(U,$J,358.3,24838,2)
 ;;=^41304
 ;;^UTILITY(U,$J,358.3,24839,0)
 ;;=345.90^^163^1602^8
 ;;^UTILITY(U,$J,358.3,24839,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24839,1,2,0)
 ;;=2^345.90
 ;;^UTILITY(U,$J,358.3,24839,1,5,0)
 ;;=5^SEIZURE DISORDER
 ;;^UTILITY(U,$J,358.3,24839,2)
 ;;=^268477
 ;;^UTILITY(U,$J,358.3,24840,0)
 ;;=427.89^^163^1602^11
 ;;^UTILITY(U,$J,358.3,24840,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24840,1,2,0)
 ;;=2^427.89
 ;;^UTILITY(U,$J,358.3,24840,1,5,0)
 ;;=5^SINUS TACHYCARDIA
 ;;^UTILITY(U,$J,358.3,24840,2)
 ;;=^87896
 ;;^UTILITY(U,$J,358.3,24841,0)
 ;;=461.9^^163^1602^12
 ;;^UTILITY(U,$J,358.3,24841,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24841,1,2,0)
 ;;=2^461.9
 ;;^UTILITY(U,$J,358.3,24841,1,5,0)
 ;;=5^SINUSITIS,ACUTE
 ;;^UTILITY(U,$J,358.3,24841,2)
 ;;=^259080
 ;;^UTILITY(U,$J,358.3,24842,0)
 ;;=473.9^^163^1602^13
 ;;^UTILITY(U,$J,358.3,24842,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24842,1,2,0)
 ;;=2^473.9
 ;;^UTILITY(U,$J,358.3,24842,1,5,0)
 ;;=5^SINUSITIS,CHRONIC
 ;;^UTILITY(U,$J,358.3,24842,2)
 ;;=^123985
 ;;^UTILITY(U,$J,358.3,24843,0)
 ;;=780.57^^163^1602^14
 ;;^UTILITY(U,$J,358.3,24843,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24843,1,2,0)
 ;;=2^780.57
 ;;^UTILITY(U,$J,358.3,24843,1,5,0)
 ;;=5^SLEEP APNEA NOS
 ;;^UTILITY(U,$J,358.3,24843,2)
 ;;=^332928
 ;;^UTILITY(U,$J,358.3,24844,0)
 ;;=780.50^^163^1602^15
 ;;^UTILITY(U,$J,358.3,24844,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24844,1,2,0)
 ;;=2^780.50
 ;;^UTILITY(U,$J,358.3,24844,1,5,0)
 ;;=5^SLEEP DISORDER
 ;;^UTILITY(U,$J,358.3,24844,2)
 ;;=^111287
 ;;^UTILITY(U,$J,358.3,24845,0)
 ;;=462.^^163^1602^16
 ;;^UTILITY(U,$J,358.3,24845,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24845,1,2,0)
 ;;=2^462.
 ;;^UTILITY(U,$J,358.3,24845,1,5,0)
 ;;=5^SORE THROAT
 ;;^UTILITY(U,$J,358.3,24845,2)
 ;;=^2653
 ;;^UTILITY(U,$J,358.3,24846,0)
 ;;=720.9^^163^1602^17
 ;;^UTILITY(U,$J,358.3,24846,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24846,1,2,0)
 ;;=2^720.9
 ;;^UTILITY(U,$J,358.3,24846,1,5,0)
 ;;=5^SPONDYLITIS
 ;;^UTILITY(U,$J,358.3,24846,2)
 ;;=^113480
 ;;^UTILITY(U,$J,358.3,24847,0)
 ;;=454.0^^163^1602^19
 ;;^UTILITY(U,$J,358.3,24847,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24847,1,2,0)
 ;;=2^454.0
 ;;^UTILITY(U,$J,358.3,24847,1,5,0)
 ;;=5^STASIS ULCER
 ;;^UTILITY(U,$J,358.3,24847,2)
 ;;=^125410
 ;;^UTILITY(U,$J,358.3,24848,0)
 ;;=721.90^^163^1602^18
 ;;^UTILITY(U,$J,358.3,24848,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24848,1,2,0)
 ;;=2^721.90
 ;;^UTILITY(U,$J,358.3,24848,1,5,0)
 ;;=5^SPONDYLOSIS
 ;;^UTILITY(U,$J,358.3,24848,2)
 ;;=^272463
 ;;^UTILITY(U,$J,358.3,24849,0)
 ;;=308.9^^163^1602^20
 ;;^UTILITY(U,$J,358.3,24849,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24849,1,2,0)
 ;;=2^308.9
 ;;^UTILITY(U,$J,358.3,24849,1,5,0)
 ;;=5^STRESS,ACUTE
 ;;^UTILITY(U,$J,358.3,24849,2)
 ;;=^268303
 ;;^UTILITY(U,$J,358.3,24850,0)
 ;;=780.2^^163^1602^21
 ;;^UTILITY(U,$J,358.3,24850,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24850,1,2,0)
 ;;=2^780.2
 ;;^UTILITY(U,$J,358.3,24850,1,5,0)
 ;;=5^SYNCOPE AND COLLAPSE
 ;;^UTILITY(U,$J,358.3,24850,2)
 ;;=^116707
 ;;^UTILITY(U,$J,358.3,24851,0)
 ;;=E967.1^^163^1602^9
 ;;^UTILITY(U,$J,358.3,24851,1,0)
 ;;=^358.31IA^5^2
 ;;^UTILITY(U,$J,358.3,24851,1,2,0)
 ;;=2^E967.1
 ;;^UTILITY(U,$J,358.3,24851,1,5,0)
 ;;=5^SEXUAL ABUSE BY OTHER
 ;;^UTILITY(U,$J,358.3,24851,2)
 ;;=^295079
 ;;^UTILITY(U,$J,358.3,24852,0)
 ;;=173.91^^163^1603^1
 ;;^UTILITY(U,$J,358.3,24852,1,0)
 ;;=^358.31IA^5^2