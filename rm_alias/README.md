# README.d    
这个工具的作用是封装了自己的rm命令,真正的rm命令变为了'rm'(符号是引号)

## 需要修改的地方有以下两处    
> /etc/bashrc 或者是 /etc/bash.bashrc 修改完成后执行source /etc/bashrc ...

`
alias rm='sh /home/shell/changerm.sh'         #表示执行rm指令的时候其实相当于自行了changerm.sh的脚本
`

> ~/.bashrc 修改完成了执行source ~/.bashrc

`
alias rm='sh /home/shell/changerm.sh'
`

> 添加crontab命令每天中午12点定时清空回收站中大于3天的文件
> crontab -e添加, 添加完成后 service cron restart, 之后可以通过crontab -l查看添加的任务

`
00 12 * * * sh /home/shell/cleartrash.sh     #每天12：00执行清理回收站的脚本
`

