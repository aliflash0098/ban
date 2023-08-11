#!/bin/bash
touch inp.txt
rm inp.txt
touch inp.txt

for lin in $(cat sites.txt);
do
    nslookup  --dns-ip=4.2.2.4 -short $lin | grep -Po "Address: (\d+\.\d+\.\d+\.\d+)" | grep -Ev "^$"  | grep -Po "(\d+\.\d+\.\d+\.\d+)" >> inp.txt
done;
