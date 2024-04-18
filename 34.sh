#!/bin/bash
#George Paul
my_list=("string1" "string2" "string3" "string4")
my_list=($(echo "${my_list[@]}" | tr ' ' '\n' | tac | tr '\n' ' '))
for i in "${!my_list[@]}"
do
my_list[$i]=`echo ${my_list[$i]} | rev`
done
echo "${my_list[@]}"
