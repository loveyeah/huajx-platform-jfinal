# huajx-platform-jfinal
Huajx platform for JFinal JBoot Admin

# 安装说明
先`git clone git@github.com:loveyeah/huajx-platform-jfinal.git`

再执行 `./gitinit.sh`

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

## mysql/jdbc:设置useInformationSchema=true读取表注释信息(table_comment)

(https://blog.csdn.net/10km/article/details/77389038)

### 方法一：java代码实现
```java
# 将所有参数装入java.util.Properties 对象
Properties props = new Properties();
props.setProperty("username",this.username);
props.setProperty("password",this.password); 
props.setProperty("useInformationSchema", "true");
# 调用getConnection(String,Properties)方法创建连接
this.pConnection = java.sql.DriverManager.getConnection(this.url, props);
```
### 方法二：连接url参数
直接将参数加到数据库连接url,如下代码中在数据连接url中添加了两个参数`characterEncoding=utf8`和`useInformationSchema=true`

```java
String url="jdbc:mysql://localhost:3306/test?characterEncoding=utf8&&useInformationSchema=true"
this.pConnection = DriverManager.getConnection(this.url, this.username,this.password);
```


