#!/bin/bash
# This script must receive this parameters to work properly
MAX_GEN=$1       # maximum number of generations (necessary for SGX library)
STEADY_STATE=$2  # maximum number of generations without improvment
IP=$3            # initial probability of 0

if [[ $# -ne 3 ]] ; then
   echo "Error: Illegal number of parameters!"
   echo "Usage: $0 <max_gen> <steady_state> <P(0)>"
   exit -1
fi

re='^[0-9]+$'
if ! [[ ${MAX_GEN} =~ $re ]] ; then
   echo "Error: Max number of generation must be a positive integer" >&2;
   exit 1
fi
if ! [[ ${STEADY_STATE} =~ $re ]] ; then
   echo "Error: Max number of generation must be a positive integer" >&2;
   exit 1
fi

echo "Removing old YARA rules"
~/YaYaGen/bash_test/clean_greedy_folders.sh
echo
echo ">>>>>>> Greedy Generation Algorithm + Selfish Gene Optimization <<<<<<<"
start="This test started on: `date`"
echo ${start}
echo "Maximum generations: ${MAX_GEN}"
echo "Steady state after: ${STEADY_STATE} generations"
echo "Initial probability of 0: ${IP}"
echo "All the other values are the default one."
OVERALL=0
echo
echo ">>>>> Clusters of type 2 <<<<<"
echo
echo ">>> type 2 cluster 1 <<<"
SECONDS=0  # initialize SECONDS variable
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type2/t2c1/ -o _sample_clusters/type2/result_rules/t2c1_greedy/
duration=$SECONDS
OVERALL=$SECONDS
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 2 cluster 2 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type2/t2c2/ -o _sample_clusters/type2/result_rules/t2c2_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 2 cluster 3 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type2/t2c3/ -o _sample_clusters/type2/result_rules/t2c3_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 2 cluster 4 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type2/t2c4/ -o _sample_clusters/type2/result_rules/t2c4_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 2 cluster 9 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type2/t2c9/ -o _sample_clusters/type2/result_rules/t2c9_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo
echo ">>>>> Clusters of type 3 <<<<<"
echo
echo ">>> type 3 cluster 1 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c1/ -o _sample_clusters/type3/result_rules/t3c1_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 2 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c2/ -o _sample_clusters/type3/result_rules/t3c2_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 5 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c5/ -o _sample_clusters/type3/result_rules/t3c5_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 6 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c6/ -o _sample_clusters/type3/result_rules/t3c6_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 7 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c7/ -o _sample_clusters/type3/result_rules/t3c7_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 8 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c8/ -o _sample_clusters/type3/result_rules/t3c8_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 3 cluster 10 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type3/t3c10/ -o _sample_clusters/type3/result_rules/t3c10_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo
echo ">>>>> Clusters of type 4 <<<<<"
echo
echo ">>> type 4 cluster 1 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type4/t4c1/ -o _sample_clusters/type4/result_rules/t4c1_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 4 cluster 2 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type4/t4c2/ -o _sample_clusters/type4/result_rules/t4c2_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 4 cluster 3 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type4/t4c3/ -o _sample_clusters/type4/result_rules/t4c3_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 4 cluster 4 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type4/t4c4/ -o _sample_clusters/type4/result_rules/t4c4_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 4 cluster 5 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type4/t4c5/ -o _sample_clusters/type4/result_rules/t4c5_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo
echo ">>>>> Clusters of type 5 <<<<<"
echo
echo ">>> type 5 cluster 1 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type5/t5c1/ -o _sample_clusters/type5/result_rules/t5c1_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 5 cluster 2 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type5/t5c2/ -o _sample_clusters/type5/result_rules/t5c2_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 5 cluster 3 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type5/t5c3/ -o _sample_clusters/type5/result_rules/t5c3_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo
echo ">>>>> Clusters of type 6 <<<<<"
echo
echo ">>> type 6 cluster 2 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type6/t6c2/ -o _sample_clusters/type6/result_rules/t6c2_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 6 cluster 3 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type6/t6c3/ -o _sample_clusters/type6/result_rules/t6c3_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo ">>> type 6 cluster 4 <<<"
SECONDS=0
./yyg.py -a greedy -opt greedy -ip ${IP} -mg ${MAX_GEN} -ss ${STEADY_STATE} -dir _sample_clusters/type6/t6c4/ -o _sample_clusters/type6/result_rules/t6c4_greedy/
duration=$SECONDS
OVERALL=$((OVERALL+SECONDS))
echo
echo "$(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed."
echo
echo
echo
echo "----- That's all folks! -----"
echo "This test ended on: `date`"
echo "$(($OVERALL / 3600)) hours $(($OVERALL / 60 % 60)) minutes and $(($OVERALL % 60)) seconds elapsed."
echo
