#!/bin/bash
NAME=$1     # the name of the target test
ITERS=$2    # number of times that the experiment have to be executed

if [[ $# -le 1 ]] ; then
   echo "Error: Illegal number of parameters!"
   echo "Usage: $0 <bash_test_name> <iterations> [<bash_script_params>]"
   exit -1
fi

re='^[0-9]+$'
if ! [[ ${ITERS} =~ $re ]] ; then
   echo "Experiment's number of iteration invalid (must be a positive integer)!"
   exit 2
fi

shift  # removing bash script name
shift  # removing number of iterations
ARGS=$@

for i in `seq 1 ${ITERS}`;
do
    echo "-------> Iteration $i started on: `date` <-------"
    ~/YaYaGen/bash_test/${NAME} ${ARGS} &> log_${NAME}_${i}.txt
    echo "-------> Iteration $i ended on:   `date` <-------"
done
echo