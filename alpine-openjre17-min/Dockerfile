FROM openjdk:17.0.2-slim
MAINTAINER linxiaolong linsmalldragon@qq.com
ENV LANG=C.UTF-8 \
    TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& echo $TZ > /etc/timezone \