#! /bin/bash
echo "Test 1 (a) - Testing script with no input given"
input1=""
ExpectedOutput="Please insert value"
#running java code command
javaOutput=$(java CurrencyConverter $input1 2>&1)
if [ "$javaOutput" = "$ExpectedOutput" ]; then
echo "Test 1 with no input passed"
else
echo "Test 1 with no value given failed"
exit 1
fi





