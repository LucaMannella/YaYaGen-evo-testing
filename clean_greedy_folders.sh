#!/bin/bash

rm -r -v -f ~/YaYaGen/tmp/*
echo "Files in tmp folder were removed"

rm -r -v -f ~/YaYaGen/metasploit/result_greedy/*
echo "YARA rule(s) of metasploit cluster were removed"

cd ~/YaYaGen/_sample_clusters/type2/result_rules/
rm -r -v -f ./t2c1_greedy/*
rm -r -v -f ./t2c2_greedy/*
rm -r -v -f ./t2c3_greedy/*
rm -r -v -f ./t2c4_greedy/*
rm -r -v -f ./t2c5_greedy/*
rm -r -v -f ./t2c6_greedy/*
rm -r -v -f ./t2c7_greedy/*
rm -r -v -f ./t2c8_greedy/*
rm -r -v -f ./t2c9_greedy/*
echo "YARA rule of clusters of type 2 removed"

cd ~/YaYaGen/_sample_clusters/type3/result_rules/
rm -r -v -f ./t3c1_greedy/*
rm -r -v -f ./t3c2_greedy/*
rm -r -v -f ./t3c3_greedy/*
rm -r -v -f ./t3c4_greedy/*
rm -r -v -f ./t3c5_greedy/*
rm -r -v -f ./t3c6_greedy/*
rm -r -v -f ./t3c7_greedy/*
rm -r -v -f ./t3c8_greedy/*
rm -r -v -f ./t3c9_greedy/*
rm -r -v -f ./t3c10_greedy/*
echo "YARA rule of clusters of type 3 removed"

cd ~/YaYaGen/_sample_clusters/type4/result_rules/
rm -r -v -f ./t4c1_greedy/*
rm -r -v -f ./t4c2_greedy/*
rm -r -v -f ./t4c3_greedy/*
rm -r -v -f ./t4c4_greedy/*
rm -r -v -f ./t4c5_greedy/*
echo "YARA rule of clusters of type 4 removed"

cd ~/YaYaGen/_sample_clusters/type5/result_rules/
rm -r -v -f ./t5c1_greedy/*
rm -r -v -f ./t5c2_greedy/*
rm -r -v -f ./t5c3_greedy/*
echo "YARA rule of clusters of type 5 removed"

cd ~/YaYaGen/_sample_clusters/type6/result_rules/
rm -r -v -f ./t6c1_greedy/*
rm -r -v -f ./t6c2_greedy/*
rm -r -v -f ./t6c3_greedy/*
rm -r -v -f ./t6c4_greedy/*
echo "YARA rule of clusters of type 6 removed"
echo