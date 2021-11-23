This is a [Next.js](https://nextjs.org/) project 
结合docker 使用一下 docker 的基本使用

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
2. 制作镜像 ```docker image build -t next-app .```
3. 启动容器 ```docker container run --rm -p 8000:3000 -it next-app```
4. 访问 [http://localhost:8000](http://localhost:8000)
5. 进入容器 ```docker container exec -it [containerID] /bin/bash ```
6. 查看容器 ```docker ps -a```
7. 删除容器 ```docker kill [containerID]```