# syntax=docker/dockerfile:1

FROM node:16.17.0

# 使用生产环境
ENV NODE_ENV=production

# 设置工作目录
WORKDIR /mnt

# 复制文件
COPY ["package.json", "package-lock.json", "./"]

# 安装依赖
RUN npm install --production

# 复制源代码
COPY ./.env ./
COPY ./dist ./

# 运行应用
CMD [ "node", "main.js" ]
