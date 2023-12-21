# MaxQiu Linux Script Note
## 啟動docker指令
### docker images
### docker run -itd --name mycentos centos:latest
### docker run -itd --privileged=true --name mycentos2 centos:latest /usr/sbin/init
### docker start mycentos
### docker start mycentos2
### docker exec -it mycentos /bin/bash
### docker exec -it mycentos2 /bin/bash
## 安裝man相關語法
### cat /etc/passwd
### whereis man
### locale #語系
### locale -a
### sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
### sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
### yum install man
### rpm -qa|grep vim
### yum -y install vim-enhanced
### yum -y install man-pages
### echo $MANPATH
### export MANPATH=/usr/share/man
### yum update
### which man
### type -a ls
## 安裝tomcat語法
### yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel
### java -version
### yum -y install wget
### wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.zip
### file apache-tomcat-9.0.84.zip
### unzip apache-tomcat-9.0.84.zip
### yum install zip
### mv apache-tomcat-9.0.84 /opt/
### systemctrl daemon-reload
## 目錄檔案操作
### ls -F
### ls -l
### ls -l pro*
### touch abc
### cp abc def.kkman
### cp -i abc def.kkman #複製時提示
### ls -la #列出所有檔案,包含隱藏檔
### ls -lai
### ls -liah #顯示檔案大小表示
### ls -lia
### ln -s abc pcman #建立檔案鏈結
### ls -lia
### vim abc
### ln abc kkman
### ls -l
### ls -lia
### ls -li
### touch fall
### mv fall fzll
### mkdir pictures
### mv fall pictures/
### ls -li pictures/
### mv -i pictures/fall ./
### rm -i fall
### mkdir -p New_Dir/Sub_Dir/Under_Dir
### rm -rf New_Dir/
### file WTSTMeasureDemo.java
### cat WTSTMeasureDemo.java -n
### cat WTSTMeasureDemo.java -b
### more bashrc 
### less bashrc
### cat ESB_interface_201603301221.log
### more ESB_interface_201603301221.log
### tail ESB_interface_201603301221.log
### tail ESB_interface_201603301221.log -n 15
### head JavaThreadAnywhere.java
### head JavaThreadAnywhere.java -n 50
## 更多的Bash Shell
### ps -ef
### ps -l
### ps l
### ps --forest
### ps --version
### top
### mount
### df
### df -h
### du -h
### df
### df -h
### sort -t ':' -k 3 -n /etc/passwd
### du -sh * | sort -nr
### du -sh *
### du -sh
### du -s
### du -h
### grep SingleThreadedSingleton SingleThreadedSingleton.java
### grep -v SingleThreadedSingleton SingleThreadedSingleton.java
### grep -n SingleThreadedSingleton SingleThreadedSingleton.java
### grep -c SingleThreadedSingleton SingleThreadedSingleton.java
### cat SingleThreadedSingleton.java
### grep -e SingleThreadedSingleton -e someService SingleThreadedSingleton.java
### grep [st] SingleThreadedSingleton.java
### grep -n [st] SingleThreadedSingleton.java
### tar -cvf test.tar io/
### du io -sh
### tar -tf test.tar
### tar -xvf test.tar
## Shell相關
### cat /etc/passwd
### ls -lF /bin/bash
### yum install file
### file bash
### type exit
### type ps
### type -a ps
### alias -p
### pwd ; ls ; cd /etc ; pwd ; cd ; pwd ; ls
### echo $BASH_SUBSHELL
### (pwd ; ls ; cd /etc ; pwd ; cd ; pwd ; ls)
### echo $BASH_SUBSHELL
### (pwd ; ls ; cd /etc ; pwd ; cd ; pwd ; ls)
### ( pwd ; echo $BASH_SUBSHELL)
### ( pwd ; (echo $BASH_SUBSHELL))
### ps -f
### sleep 3000&
### jobs
### jobs -l
### (sleep 2 ; echo $BASH_SUBSHELL ; sleep 2)
### (sleep 2 ; echo $BASH_SUBSHELL ; sleep 2)&
### coproc sleep 10
### jobs
### coproc My_Job { sleep 10; }
### coproc ( sleep 10; sleep 2 )
### ps --forest
### jobs -l
### coproc ( sleep 10; sleep 2 )
### ps --forest
### which ps #只顯示外部命令
### type ps
### type -a ps
### history -a
### history
### !!
### !201
## 環境變數
### printenv
### env
### printenv HOME
### set #顯示所有環境變量
### echo $HOME
### cd $HOME
### echo $my_variable
### my_variable="Hello Taipei"
### echo $my_variable
### bash
### echo $my_variable
### my_variable="I am Global now"
### export my_variable
### echo $my_variable
### ps --forest
### pcman="Hello UUU"
### export pcman
### kkman="Hello thread"
### echo $kkman
### unset kkman
### echo $kkman
### exit
### echo $PATH
### PATH=$PATH:/tmp/apache-tomcat-9.0.84
### echo $PATH
### cat /etc/profile
### ls -liah /etc/profile.d
### printenv BASH_ENV
### cat /root/.bashrc
### vi /root/.bashrc
### mytest=(one two three four five)
### echo $mytest
### echo ${mytest[2]}
### echo ${mytest[*]}
### mytest[2] = "Hello"
### mytest[2]="Hello"
### echo ${mytest[*]}
### unset mytest[2]
### echo ${mytest[*]}
### echo ${mytest[2]}
### echo ${mytest[3]}
### unset mytest
### echo ${mytest[*]}
## 文件權限
### cat /etc/passwd
### cat /etc/shadow
### cat /etc/default/useradd
### ls -al /etc/skel
### cat /etc/skel/.bashrc 
### useradd -m test
### useradd -D
### grep test /etc/passwd
### userdel test
### grep test /etc/passwd
### useradd -D -s /home/abcde
### useradd -m kkman
### userdel -r kkman
### cat /etc/group
### /usr/sbin/groupadd shared
### tail /etc/group
### useradd -D -s /bin/bash
### useradd -D
### useradd -m kkman1
### useradd -m kkman2
### useradd -m kkman3
### usermod -G shared kkman1
### tail /etc/group
### groupmod -n sharing shared
## 常見Linux目錄名稱
### / 虛擬目錄的根目錄。通常不會在這裡存儲文件
### /bin 二進制目錄，存放許多用戶級的GNU工具
### /boot 啟動目錄，存放啟動文件
### /dev 設備目錄，Linux在這裡創建設備節點
### /etc 系統配置文件目錄
### /home 主目錄，Linux在這裡創建用戶目錄
### /lib 庫目錄，存放系統和應用程序的庫文件
### /media 媒體目錄，可移動媒體設備的常用掛載點
### /mnt 掛載目錄，另一個可移動媒體設備的常用掛載點
### /opt 可選目錄，常用於存放第三方軟件包和數據文件
### /proc 進程目錄，存放現有硬件及當前進程的相關信息
### /root root用戶的主目錄
### /sbin 系統二進制目錄，存放許多GNU管理員級工具
### /run 運行目錄，存放系統運作時的運行時數據
### /srv 服務目錄，存放本地服務的相關文件
### /sys 系統目錄，存放系統硬件信息的相關文件
### /tmp 臨時目錄，可以在該目錄中創建和刪除臨時工作文件
### /usr 用戶二進制目錄，大量用戶級的GNU工具和數據文件都存儲在這裡
### /var 可變目錄，用以存放經常變化的文件，比如日志文件