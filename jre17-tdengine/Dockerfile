FROM openjdk:17.0.2-slim
MAINTAINER linxiaolong linsmalldragon@qq.com
ENV LANG=C.UTF-8 \
    TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& echo $TZ > /etc/timezone
ENV TDENGINE_VERSION=3.0.3.2-x64
ADD TDengine-client-${TDENGINE_VERSION} /TDengine-client-${TDENGINE_VERSION}
RUN cd /TDengine-client-${TDENGINE_VERSION} \ 
	&& ./install_client.sh \
	&& cd ../