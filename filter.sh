#!/bin/bash 

csvstack 2019-Oct-sample.csv 2019-Nov-sample.csv | csvcut -c 2-5,7-8 > filter_sample.csv | csvcut -c 6 > raw_cat.csv

awk -F "." '{print $1, $NF}' raw_cat.csv  > cat_clean.csv

csvjoin -c "category_produk nama_produk" filter_sample.csv cat_clean.csv > data_clean.csv 


