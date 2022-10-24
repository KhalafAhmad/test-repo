#################################################################################################
##############                                                       ############################
############## This script using just one function for track changes ############################
##############                                                       ############################ 
#################################################################################################

#!/bin/bash
echo "This Script is monitor and track user work flow in spesific folder"
PATH_DIR=$1


#Function 1 for create file or folder

CREATE_FILE_OR_FOLDER(){
        echo `date`
echo -e "Hi Ahmad Khalaf...\n now the user is create file or folder which name [ $1 ] on $2  "

}

inotifywait -m -r $PATH_DIR  | while read DIR EVENT FILE
do
 case $EVENT in
         CREATE*)
                 CREATE_FILE_OR_FOLDER $FILE $DIR

                 ;;
 esac
done
