# 《小白的开发之路：Node.js 服务端应用开发实践》演示项目

## 运行

```
docker-compose up -d
```

## 数据库
运行以后，在本地的数据库客户端可以连接到在容器里运行的 mysql 服务，连接时，端口号要设置成在 .env 文件里的 `MYSQL_LOCAL_PORT` 这个环境变量的值，默认是 `3309`。

数据库里有一些演示数据，其中用户的密码都是，比如王皓、小雪、张三、李四，他们的登录密码都是 `123123`。

## 开发

```
docker build --tag ninghao/xb2-node .
docker push ninghao/xb2-node:latest
```