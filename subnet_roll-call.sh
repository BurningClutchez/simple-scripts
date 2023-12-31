#!/bin/bash

echo "provide the first three octets(without the final ".")"
read ip_prefix_1

for i in $(seq 1 254); do

  ping -c 1 -W 1 $ip_prefix_1.$i | grep "ttl"
  
done

