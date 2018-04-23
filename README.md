# huajx-platform-jfinal
Huajx platform for JFinal JBoot Admin

# JBoot

# JFinal

# ISSUE

## 主机HostKey值改变导致SSH连接报出警告

### 问题描述：
当使用SSH连接主机时，会在本地的"known_hosts"文件中，增加一条保存所连主机HostKey值的记录，该记录的主键可以是所连主机的域名，也可以是所连主机的IP地址。

当主机的HostKey值改变了，会给出类似如下警告：

Offending RSA key in /home/dsl/.ssh/known_hosts:8 

### 解决方案：
删除掉旧的HostKey值记录，下次重新保存新的就行。

具体命令：使用VIM编辑器找到相应行，删除就行了！

