#! /bin/bash
echo "Test 1 - no input"
input1=""
ExpectedOutput="Please insert value"
#running java code command
javaOutput=$(java CurrencyConverter $input1 2>&1)
if [ "$javaOutput" = "$ExpectedOutput" ]; then
echo "Test 1 pass"
else
echo "Test 1 failed"
fi





