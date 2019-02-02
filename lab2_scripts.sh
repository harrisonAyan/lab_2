#!/bin/bash
# Author: Harrison Ayan
# Date: 1/31/19

#Problem 1 Code:
read -p "Enter a regular expression: " reg
read -p "Enter a filename: " fileName

#passed variables inputed by user into grep
grep -E "$reg" "$fileName"

#grep using Regex looking for 3,3 and 4 digits followed by -
totalPhones=$(grep -Ec "^[0-9]{3}\-[0-9]{3}\-[0-9]{4}$" regex_practice.txt)
echo "There are $totalPhones phone numbers in regex_practice.txt"

#Any amount of valid characters followed by @ any amount of char followed by . only 2-6 letters
totalEmails=$(grep -Ec "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$" regex_practice.txt)
echo "There are $totalEmails emails in regex_practice.txt"

#writes results in respective file
grep -E "^303\-[0-9]{3}\-[0-9]{4}$" regex_practice.txt > phone_results.txt
grep "@geocities.com" regex_practice.txt > email_results.txt
grep -E "$reg" regex_practice.txt > command_results.txt
