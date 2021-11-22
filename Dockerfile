# Node镜像
FROM node:15

ARG BRANCH=master
ENV LANG='en_US.UTF-8' CONFIG=$BRANCH

# 添加工作目录
ADD . /app
WORKDIR /app
RUN mkdir logs

RUN npm install pm2 -g
RUN chmod -R 777 /app/deploy
# 暴露端口启动脚本
EXPOSE  3000
ENTRYPOINT ["./deploy/entrypoint.sh"]
