 #! /bin/bash
echo "Test 2 (b)- Converting Currency in all formats"
input1="1 POUNDS"
input2="1 DOLLARS"
input3="1 EUROS"
input4="1 pounds"
input5="1 dollars"
input6="1 euros"
input7="1 Pounds"
input8="1 Dollars"
input9="1 Euros"
OldOutput="Thank you for using the converter."
Lowercasepounds=$(java CurrencyConverter $input4)
if [ "$lowercasecasepounds" != "$OldOutput" ]; then
echo "Test 2 lowercasepounds input passed"
else
echo "Test 2 lowercasepounds input failed"
exit 1
fi
Lowercasedollars=$(java CurrencyConverter $input5)
if [ "$Uppercasedollars" != "$OldOutput" ]; then
echo "Test 2 Upper case dollars input passed"
else
echo "Test 2 Upper case dollars input failed"
exit 1
fi
Lowercaseeuros=$(java CurrencyConverter $input6)
if [ "$Uppercasedollars" != "$OldOutput" ]; then
echo "Test 2 Lower case euros input passed"
else
echo "Test 2 Lower case euros input failed"
exit 1
fi
Uppercasepounds=$(java CurrencyConverter $input1)
if [ "$Uppercasepounds" != "$OldOutput" ]; then
echo "Test 2 Upper case pounds input passed"
else
echo "Test 2 Upper case pounds input failed"
exit 1
fi
Uppercasedollars=$(java CurrencyConverter $input2)
if [ "$Uppercasedollars" != "$OldOutput" ]; then
echo "Test 2 Upper case dollar input passed"
else
echo "Test 2 Upper case dollar input failed"
exit 1
fi
Uppercaseuros=$(java CurrencyConverter $input3)
if [ "$Uppercaseuros" != "$OldOutput" ]; then
echo "Test 2 Upper case euros input passed"
else
echo "Test 2 failed"
exit 1
fi
Mixedcase1=$(java CurrencyConverter $input7)
if [ "$Mixedcase1" != "$OldOutput" ]; then
echo "Test 2 mixed pounds passed"
else
echo "Test 2 mixed pounds failed"
exit 1
fi
Mixedcase2=$(java CurrencyConverter $input8)
if [ "$Mixedcase2" != "$OldOutput" ]; then
echo "Test 2 mixed dollars  passed"
else
echo "Test 2 failed"
exit 1
fi
Mixedcase3=$(java CurrencyConverter $input9)
if [ "$Mixedcase3" != "$OldOutput" ]; then
echo "Test 2 mixed euros passed"
else
echo "Test 2 mixed euros failed"
exit 1
fi











