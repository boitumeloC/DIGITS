for F in ./path to image containing folder/*.jpeg; do
   	T=${F##*/}  ## Removes directory part. Same as $(basename "$F")
	D=$(identify -format "%w " ./path to image containing folder/$T) 
	E=$(identify -format "%h" ./path to folder containing images/$T)
   	N=${T%.jpeg}.txt  ## Removes .JPEG and adds .txt
	
echo "type 0 0 0 0 $D  0 $E 0 0 0 0 0 0 0 " >> ./label/$N # write the data to an already existing label folder

   
done 
