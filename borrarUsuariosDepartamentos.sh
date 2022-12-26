#!/bin/bash

usuarios=$(cat usuario.csv)
	
while read line; do
  login=$(echo $line | cut -d ',' -f1)
  grupo_departamento=$(echo $line | cut -d ',' -f2)
  sudo userdel "$login"
  sudo groupdel "$grupo_departamento"
done <<< "$usuarios"
