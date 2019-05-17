# README  

该工具的目的
1. 对未分配的剩余空间进行分区并格式化开机自动挂载  
2. 把用户工作目录下的Documents和Downloads等文件夹保存在在装系统或者当前系统损坏之后不会影响到的分区里面,并在在当前用户的工作目录下面创建对应的软连接  

## STEP  

### 对未分配的剩余空间进行分区并格式化开机自动挂载  

1. 查看磁盘当前的空间和挂载情况,从而判断是否有剩余的空间  
<pre>
sudo fdisk -l
</pre>
2. 增加主分区(e.g. /dev/sda10)  
<pre>
sudo fdisk /dev/sda
-n 创建新的分区,之后设置删除的起始和结束未知根据需求添加
-w 保存修改
-q 退出修改
</pre>
3. 重载分区  
<pre>
sudo partprobe
or
sudo kpartx  -a  /dev/sda10
</pre>
4. 查看分区列表  
<pre>
sudo parted /dev/sda10
</pre>
5. 格式化分区  
<pre>
sudo mkfs.ext4  /dev/sda10
</pre>
6. 查看对应分区的UUID  
<pre>
sudo blkid
</pre>
6. 修改/etc/fstab,主要设置新建的分区为开机启动  
<pre>
sudo vim /etc/fstab
e.g. UUID=e7c1907a-06d5-4b1c-a9b4-65d29ee90a6d /kinjon ext4 defaults 0 0
</pre>
7. 重启,即可发现该分区已经成功挂载在/kinjon上面  

### 重定向工作目录下的一些重要的文件夹  

<pre>
sh disk_managements.sh
</pre>

