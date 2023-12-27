# MaxQiu Linux_Command_Line_Note
## 啟動docker指令
### docker images
### docker run -itd --name mycentos centos:latest
### docker run -itd --privileged=true --name mycentos2 centos:latest /usr/sbin/init
### docker start mycentos
### docker start mycentos2
### docker exec -it mycentos /bin/bash
### docker exec -it mycentos2 /bin/bash
### docker exec -u kkman1 -it mycentos2 /bin/bash
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
## 綜合操作
### date -R
### hwclock
### hwclock -r
### cal
### timedatectl list-timezones | grep Asia
### timedatectl set-timezone Asia/Taipei
### date -R
### date > test6
### date>>test6
### date>>test6
### date>>test6
### cat test6 
### wc<test6
### wc << EOF
### test string 1
### test string 2
### test string 3
### EOF
### rpm -qa > rpm.list
### sort < rpm.list
### rpm -qa | sort
### rpm -qa | sort | more
### echo $?
### expr 1 + 5
### getopt ab:cd -a -b test1 -cd test2 test3 #顯示命令行選項參數與實際參數列表
### ls -al badfile 2> test4	#錯誤訊息重定向
### ls -al test badtest test2 2> test5
### ls -al test test2 test3 badtest 2> test6 1> test7	#STDOUT,STDERR都重定向
### ls -al test test2 test3 badtest &> test8	#STDOUT,STDERR都重定向
### lsof -a -p $$ -d 0,1,2	#列出file descriptor
### ls -al badfile test16 2> /dev/null	#吃掉錯誤訊息
### cat /dev/null > testfile	#清除文件內容
### mktemp testing.XXXXXX	#建立臨時檔案
### mktemp -t test.XXXXXX	#建立臨時檔案
### mktemp -d dir.XXXXXX	#建立臨時目錄
### date | tee abcd	#T型管道
### date | tee -a abcd	#T型管道,附加
### sh sig6.sh &	#背景執行
### sh sig7.sh > sig7.out &	#背景執行
### nohup sh sig6.sh &	#背景執行,不關閉process
### jobs -l	#查看分配給shell的作業
### kill -l | grep SIGHUP	#搜尋命令
### kill -20 1046	#發送訊號給process
### bg
### fg
### systemctl start atd
### ps -o pid,ppid,ni,cmd
### nice -n -10 sh sig7.sh > sig7.out &
### renice -n 8 -p 139
### renice -n 8 -p 139
### at -f ./at.sh now
### atq
### atrm 2
### yum install cronie
### crontab -l
## Sed,gawk
### sed 's/dog/cat/' data1.txt
### sed -e 's/brown/green/; s/dog/cat/' data1.txt
### sed -f script.sed data1.txt
### gawk '{print $1}' data2.txt
### gawk -F: '{print $1}' /etc/passwd
### echo "My name is Rich" | gawk '{$4="Christine"; print $0}'
&emsp;
### gawk '{
### $4="Christine"
### print $0}'
&emsp;
### gawk -F: -f script.gawk /etc/passwd
### gawk -F: -f script2.gawk /etc/passwd
### gawk 'BEGIN {print "Hello World!"}'
&emsp; 
### gawk 'BEGIN {print "The data3 File Contents:"}
### {print $0}' data3.txt
&emsp; 
### gawk 'BEGIN {print "The data3 File Contents:"}
### {print $0}
### END {print "End of File"}' data3.txt
&emsp; 
### gawk -f script3.gawk /etc/passwd
### sed 's/test/trial/' data4.txt
### sed 's/test/trial/2' data4.txt
### sed 's/test/trial/1' data4.txt
### sed 's/test/trial/g' data4.txt
### sed -n 's/test/trial/p' data5.txt
### sed 's/test/trial/p' data5.txt
### sed -n 's/test/trial/p' data5.txt
### sed 's/test/trial/w test.txt' data5.txt
### sed 's/\/bin\/bash/\/bin\/csh/' /etc/passwd
### sed '2s/dog/cat/' data1.txt
### sed '2,3s/dog/cat/' data1.txt
### sed '2,$s/dog/cat/' data1.txt
### sed '/kkman1/s/bash/csh/' /etc/passwd
&emsp; 
### sed '2{
### s/fox/elephant/
### s/dog/cat/
### }' data1.txt
&emsp; 
### sed '3,${
### s/brown/green/
### s/lazy/active/
### }' data1.txt
&emsp; 
### sed 'd' data1.txt
### sed '3d' data6.txt
### sed '3d' data6.txt
### sed '2,3d' data6.txt
### sed '3,$d' data6.txt
### sed '/number 1/d' data6.txt
### sed '/1/,/3/d' data7.txt
### sed '/1/,/5/d' data7.txt
### echo "Test Line 2" | sed 'i\Test Line 1'
### echo "Test Line 2" | sed 'a\Test Line 1'
&emsp; 
### echo "Test Line 2" | sed 'i\
### Test Line 1'
&emsp; 
### sed '3i\
### This is an inserted line.' data6.txt
&emsp; 
### sed '$a\
### This is a new line of text.' data6.txt
&emsp; 
### sed 'a\
### This is a new line of text.' data6.txt
&emsp; 
### sed '1i\
### This is a new line of text.' data6.txt
&emsp; 
### sed '$i\
### This is one line of new text.\
### This is another line of new text.' data6.txt
&emsp;
### sed '1i\
### This is one line of new text.\
### This is another line of new text.' data6.txt
&emsp; 
### sed '3c\
### This is a changed line of text.' data6.txt
&emsp; 
### sed '/number 3/c\
### This is a changed line of text.' data6.txt
&emsp; 
### sed '/number 1/c\
### This is a changed line of text.' data8.txt
&emsp; 
### sed '2,3c\
### This is a new line of text.' data6.txt
&emsp; 
### sed 'y/123/789/' data8.txt
&emsp; 
### echo "This 1 is a test of 1 try." | sed 'y/123/456/'
### echo "this is a test" | sed 'p'
### echo "this is a test" | sed -n 'p'
### sed -n '/number 3/p' data6.txt
### sed -n '2,3p' data6.txt
&emsp; 
### sed -n '/3/{
### p
### s/line/test/p
### }' data6.txt
&emsp; 
### sed '=' data1.txt
&emsp; 
### sed -n '/number 4/{
### =
### p
### }' data6.txt
&emsp; 
### sed -n 'l' data9.txt
### sed -n 'l' data10.txt
### sed '1,2w test2.txt' data6.txt
### sed -n '/Browncoat/w Browncoats.txt' data11.txt
### sed '3r data12.txt' data6.txt
### sed '/number 2/r data12.txt' data6.txt
### sed '$r data12.txt' data6.txt
### sed 'lr data12.txt' data6.txt
### sed '1r data12.txt' data6.txt
&emsp; 
### sed '/LIST/{
### r data11.txt
### d
### }' notice.std
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
### ls -liah /home/kkman1/.b* #搜尋別的資料夾特定檔案
### touch fall
### mv fall fzll
### mkdir pictures
### mv fall pictures/
### ls -li pictures/
### mv -i pictures/fall ./
### rm -i fall
### mkdir -p New_Dir/Sub_Dir/Under_Dir
### rm -rf New_Dir/
### rm -rf * #刪除某個目錄下所有檔案
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
### umask
### touch abc
### mkdir newdir
### chmod 777 abc
### chmod 444 abc
### chmod o+r abc
### chmod o=u abc
### chmod a=o abc
### chmod a-x abc
### chown kkman1 abc
### chown kkman2.sharing abc
### mkdir testdir
### chgrp sharing testdir
### chown kkman1 testdir
### chmod g+s testdir
### touch jjj