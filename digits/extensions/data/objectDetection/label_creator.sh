#!/bin/bash 
for F in ./path to folder containing your images/*.jpeg; do
   	T=${F##*/}  ## Removes directory part. Same as $(basename "$F")
	identify -format "%w %h" ./path to folder containing your image/$T 
   	T=${T%.jpeg}.txt  ## Removes .JPEG and adds .txt
	identify -format "%wx%h" $T
echo "Diamond  0 0 0 0 0 0 0 0 0 0 0 0 0 0 " >> $T
   
done
