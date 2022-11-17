#! /bin/bash
echo "Test 3 - checking exchange rates"
input1="1 dollars"
input2="1 pounds"
input3="1 euros"
ExpectedOutput1="1 Dollars = 0.74 Pounds, 1.0 Dollars = 0.88 Euros"
ExpectedOutput2="1 Pound = 1.36 Dollars, 1.19 Euros"
ExpectedOutput3="1 Euro = 1.13 Dollars, 0.84 Pounds"
#running java code command
javaOutput=$(java CurrencyConverter $input1 2>&1)
if [ "$javaOutput" = "$ExpectedOutput1" ]; then
echo "Test 3 pass"
else
echo "Test 3 failed"
fi
javaOutput=$(java CurrencyConverter $input2 2>&1)
if [ "$javaOutput" = "$ExpectedOutput2" ]; then
echo "Test 3 pass"
else
echo "Test 3 failed"
fi
javaOutput=$(java CurrencyConverter $input3 2>&1)
if [ "$javaOutput" = "$ExpectedOutput1" ]; then
echo "Test 3 pass"
else
echo "Test 3 failed"
fi



