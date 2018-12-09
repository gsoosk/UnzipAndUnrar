find $1 -name "*.rar" | while read filename
do 
    unrar x -y "$filename" "`dirname "$filename"`"
    rm "$filename"
done 
find $1 -name "*zip" | while read filename
do 
    unzip -o -d "`dirname "$filename"`" "$filename"
    rm "$filename"
done 
