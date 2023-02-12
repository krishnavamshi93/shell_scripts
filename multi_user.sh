#Simple Script to Create Multiple Users in Linux

#Users list in a file.
USERFILE=$1

if [ "USERFILE" = "" ]
  then
          echo "Please specify the input users file!"
          exit 35
elif test -e $USERFILE
  then
        for user in `cat $USERFILE`
        do
                echo "Creating the "$user" user."
                echo "wheel group added "$user" user."
                        sudo useradd -m $user ;
                        sudo usermod -aG wheel $user
        done
        exit 40
else
        echo "Invalid input users file"
        exit 45
