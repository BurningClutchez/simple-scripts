#!/bin/bash

echo "Target Host?"

read host

ping $host | while read ping; do echo "$(date): $ping"; done | tee $host.txt