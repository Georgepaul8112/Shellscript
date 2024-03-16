#!/bin/bash
#George Paul 23mca029

echo "Enter the coefficients of the quadratic equation (ax^2 + bx + c):"

echo -n "Enter a: "
read a

echo -n "Enter b: "
read b

echo -n "Enter c: "
read c

# Calculate the discriminant
discriminant=$((b * b - 4 * a * c))

# Check the nature of roots based on the discriminant
if [ $discriminant -gt 0 ]; then
    # Two distinct real roots
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2 * $a)" | bc)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2 * $a)" | bc)

    echo "Roots are real and distinct:"
    echo "Root 1: $root1"
    echo "Root 2: $root2"
elif [ $discriminant -eq 0 ]; then
    # One real root (repeated)
    root=$(echo "scale=2; -$b / (2 * $a)" | bc)

    echo "Roots are real and repeated:"
    echo "Root: $root"
else
    # Complex roots
    real_part=$(echo "scale=2; -$b / (2 * $a)" | bc)
    imaginary_part=$(echo "scale=2; sqrt(-$discriminant) / (2 * $a)" | bc)

    echo "Roots are complex:"
    echo "Root 1: $real_part + ${imaginary_part}i"
    echo "Root 2: $real_part - ${imaginary_part}i"
fi
