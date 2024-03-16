#!/bin/bash
#George Paul 23mca029

echo "Prime numbers between 1 and 50 are:"

for ((num=2; num<=50; num++)); do
    is_prime=true

    for ((i=2; i<=num/2; i++)); do
        if [ $((num%i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done

    if $is_prime; then
        echo $num
    fi
done
