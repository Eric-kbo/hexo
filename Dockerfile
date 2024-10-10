# 使用 Node.js 官方镜像
FROM node:14

# 设置工作目录
WORKDIR /usr/src/app

# 复制静态文件到容器中
COPY . /usr/src/app

# 安装 http-server
RUN npm install -g http-server

# 暴露端口
EXPOSE 16100

# 启动 http-server
CMD ["http-server", "-p", "16100"]