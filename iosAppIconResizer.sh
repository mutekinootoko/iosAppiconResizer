
# iosAppIconResizer.sh < path to 1024x1024 png file>

sizes=( 180 120 114 80 87 58 57 60 40 29 )

FN="${1##*/}"
FNNOEXT="${FN%.*}"
EXT="${FN##*.}"

#echo 'filename ' $FN ' filename no ext ' $FNNOEXT  ' ext ' $EXT

for size in "${sizes[@]}"
do
	NEWFILENAME=${FNNOEXT}_${size}.${EXT}
	#echo $NEWFILENAME
	sips -z $size $size $1  --out ./$NEWFILENAME
done


