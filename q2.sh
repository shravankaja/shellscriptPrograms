for file in `ls *.txt`
do 
	filename=`echo $file | awk -F. '{print($1)}'`
        echo $filename 
	mkdir $filename 
	mv $file $filename
done
