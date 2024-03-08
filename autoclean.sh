#!/bin/bash

dir="./test/" # Especificar dir

year=$(date +"%Y")

for i in {01..12}; do
  mouth=$(printf "%02d" "${i#0}")
  file_list=$(ls "$dir/invoice_$year$mouth"*.txt 2>/dev/null)
  if [[ -z $file_list ]]; then
    continue
  fi
  tar -cf "$year-$mouth.tar" $file_list
  rm -f $file_list
done