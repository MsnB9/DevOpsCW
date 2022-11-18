#! /bin/bash
echo "Test 3 (c) - Script to check exchange rates"
#giving inputs to see the exchnage rates
input1="1 dollars"
input2="1 pounds"
input3="1 euros"
ExpectedOutputDollar1="0.74 Pounds"
ExpectedOutputDollar2="0.88 Euros"
ExpectedOutputPound1="1.36 Dollars"
ExpectedOutputPound2="1.19 Euros"
ExpectedOutputEuro1="1.13 Dollars"
ExpectedOutputEuro2="0.84 Pounds"
#running java code command
javaOutput=$(java CurrencyConverter $input1 2>&1)
#Checking inputs.If java output is same as actual exchange rates we wanted, test passes otherwise it fails
if [[ "$javaOutput" == *"$ExpectedOutputDollar1"* && *"ExpectedOutputDollar2"* ]]; then
#Using echo comman to print test results
echo "Test 3 passed"
else
echo "Test 3 failed"
exit 1
fi
javaOutput=$(java CurrencyConverter $input2 2>&1)
if [[ "$javaOutput" == *"$ExpectedOutputPound1"* && *"ExpectedOutputPound2"* ]]; then
echo "Test 3 passed"
else
echo "Test 3 failed"
exit 1
fi
javaOutput=$(java CurrencyConverter $input3 2>&1)
if [[ "$javaOutput" == *"$ExpectedOutputEuro1"* && *"ExpectedOutputPoundEuro2"* ]]; then
echo "Test 3 passed"
else
echo "Test 3 failed"
fi



