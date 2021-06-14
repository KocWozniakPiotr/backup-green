## !!! READ THIS !!!
 
###### put the file in your user directory so that it stays outside of your greenlight directory 
###### change permission fo this file to make it executable : 
```
sudo chmod +x backup-green.sh 
sudo chmod 775 backup-green.sh 
```
###### !ALWAYS! execute the extract command with `sudo` to preserve all permissions, user and group inside the archive !!! 
###### to extract use command: 
```
sudo tar -xvf greenlight-XX-XX-XX.bkp -C ~/ 
``` 
###### DO NOT OVERWRITE YOUR GREENLIGHT DIRECTORY! DO A BACKUP OR MOVE IT SOMEWHERE BEFORE EXTRACTING NEW ONE 
###### to auto execute it and run in background use `nohup` command below and accept with your root password once 
```
sudo sh -c 'nohup ./backup-green.sh &' 
``` 

