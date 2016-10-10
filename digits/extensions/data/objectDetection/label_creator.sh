#!/bin/bash 
for F in ./rough_white_diamond/*.jpeg; do
   	T=${F##*/}  ## Removes directory part. Same as $(basename "$F")
	identify -format "%w %h" ./rough_white_diamond/$T 
   	T=${T%.jpeg}.txt  ## Removes .JPEG and adds .txt
	identify -format "%wx%h" $T
echo "Diamond  0 0 0 0 0 0 0 0 0 0 0 0 0 0 " >> $T
   
done
