This is a [Next.js](https://nextjs.org/) project 
结合docker 学习一下 docker 的基本使用

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Deploy on Vercel

1. 启动docker 服务
2. 打包`yarn build`
3. 制作镜像 ```docker image build -t next-app .```
4. 启动容器 ```docker container run --rm -p 8000:3000 -it next-app```
5. 访问 [http://localhost:8000](http://localhost:8000)
6. 进入容器 ```docker container exec -it [containerID] /bin/bash ```
7. 查看容器 ```docker ps -a```
8. 删除容器 ```docker kill [containerID]```