for file in `ls *.log.1`
do 
	filename=`echo $file | awk -F. '{print($1)}'`
	echo $filename
	da=$(date "+%d%m%Y")
	echo $da
	filenew=`echo $filename-$da.log`
	touch $filenew
	cp $file $filenew
	rm -r $file
done

