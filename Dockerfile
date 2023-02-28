# 基础镜像使用Java
FROM java:9
# 作者
MAINTAINER janche
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
RUN chmod 775 ./tmp/ruoyi-admin.jar \
ADD ./ruoyi-admin/target/ruoyi-admin.jar /tmp

ENTRYPOINT ["java","-jar","/ruoyi-admin.jar"]
# 指定容器需要映射到主机的端口
EXPOSE 8080
