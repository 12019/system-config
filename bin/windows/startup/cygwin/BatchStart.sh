#!/bin/bash

#~/bin/windows/NetworkTest.exe& #this is ssh2Emacs
cd ~/doc
regedit /s ime-noctrlshift-noaltshift.reg


# MYXWINSH=~/bin/windows/lnks/myxwin.sh
# (echo "#!/bin/bash -l"; grep -v xterm /usr/bin/startxwin.sh|sed -ne '/^#.*/d; /^exit$/d; /./p'|grep -v checkX) > $MYXWINSH
# chmod +x $MYXWINSH
# myxwin.sh&
net start sshd&
/c/Python31/python "$(cygpath -alw ~/gcode/scim-cs/ime-py/ime-server.py)"&
while true; do
    if ps aux|grep ssh|grep bhj@216 -q; 
    then
        true;
    else
        ssh -C2qN -D 8080 bhj@216.194.70.6; 
    fi
    sleep 2; 
done&
while true; do cd ~/bin/windows; hotkey_hook; sleep 2; done&



