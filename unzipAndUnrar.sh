DEL="false"
for opt in $* ; do
    if [ "$opt" = "-r" ]; then
        DEL="true"
    fi
done 

find $1 -name "*.rar" | while read filename
do 
    unrar x -y "$filename" "`dirname "$filename"`"
    if [ $DEL = "true" ]; then
        rm "$filename"
    fi
done 
find $1 -name "*zip" | while read filename
do 
    unzip -o -d "`dirname "$filename"`" "$filename"
    if [ $DEL = "true" ]; then
        rm "$filename"
    fi
done 
