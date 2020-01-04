#set -o xtrace

declare -A farr=(
        [0]="https://raw.githubusercontent.com/simplyatul/bin/master/genexportsaliases"
        [1]="https://raw.githubusercontent.com/simplyatul/bin/master/gitaliases"
        [2]="https://raw.githubusercontent.com/simplyatul/bin/master/onefdexportsaliases"
        )

for i in "${farr[@]}"; do
        FILE_PATH="$i"
        #FILE_NAME='~/.'`basename "$i"`
        FILE_NAME="/tmp/"`basename "$i"`
        #echo $FILE_PATH
        #echo $FILE_NAME
        if [ -s "$FILE_NAME" ];
        then
                # echo "$FILE_NAME exist"
                source $FILE_NAME
                :
        else
                # echo "$FILE_NAME does not exist"
                curl -so $FILE_NAME -LJ $FILE_PATH
                source $FILE_NAME
                :
        fi
done

#set +o xtrace

