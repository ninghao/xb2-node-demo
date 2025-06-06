# 《小白的开发之路：Node.js 服务端应用开发实践》演示项目

## 运行

1. 在电脑上下载并安装 [Docker Desktop](https://www.docker.com/products/docker-desktop/)。

2. 克隆项目到本地电脑上。

```
cd ~/desktop
git clone https://github.com/ninghao/xb2-node-demo.git
```

3. 运行项目

```
cd ~/desktop/xb2-node-demo
docker-compose up -d
```

## 接口

打开 insomnia，导入 assets/insomnia/xb2-node.yml 这个文件，这样就可以通过 insomnia 测试使用应用提供的接口了。

## 数据库
运行以后，在本地的数据库客户端可以连接到在容器里运行的 mysql 服务，连接时，端口号要设置成在 .env 文件里的 `MYSQL_LOCAL_PORT` 这个环境变量的值，默认是 `3309`，用户名与数据库名都为 `xb2_node`，密码为 `PASSWORD`。

数据库里有一些演示数据，其中用户的密码都是，比如王皓、小雪、张三、李四，他们的登录密码都是 `123123`。

## 开发

如果你发现 node 容器没办法启动，可以基于项目 Dockerfile 这个文件自己编译一个 image，执行的命令就是 docker build，用 --tag 选项给这个容器起个名字，比如 ninghao/xb2-node，你可以把这个名字换成自己的，比如 zhangsan/xb2-node。编译成功以后，你可以修改 docker-compose.yaml 文件，将 node 容器的 image 替换成你自己的，比如 zhangsan/xb2-node。

```
docker build --tag ninghao/xb2-node .
docker push ninghao/xb2-node:latest
```
