#! /bin/bash

grep -i $1 ~/Documents/ahm_contacts.vcf | grep "@" | head -n 1 | tr ':' "\n" | grep "@"
