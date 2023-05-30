# MIT License
# Copyright (c) 2023 Atul Thosar (atulthosar@gmail.com)

#set -o xtrace

declare -A farr=(
        [0]="https://raw.githubusercontent.com/simplyatul/bin/master/gen_export_and_aliases"
        [1]="https://raw.githubusercontent.com/simplyatul/bin/master/git_aliases"
        [2]="https://raw.githubusercontent.com/simplyatul/bin/master/docker_aliases"
        [3]="https://raw.githubusercontent.com/simplyatul/bin/master/k8s_aliases"
        [4]="https://raw.githubusercontent.com/simplyatul/bin/master/make_aliases"
        )

for i in "${farr[@]}"; do
        REMOTE_FILE="$i"
        LOCAL_FILE="/tmp/"`basename "$i"`
        #echo $REMOTE_FILE
        #echo $LOCAL_FILE
        if [ -s "$LOCAL_FILE" ];
        then
                # echo "$LOCAL_FILE exist"
                source $LOCAL_FILE
                :
        else
                # echo "$LOCAL_FILE does not exist"
                curl --silent --output $LOCAL_FILE --location $REMOTE_FILE
                source $LOCAL_FILE
                :
        fi
done

#set +o xtrace
