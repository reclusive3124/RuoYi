# 基础镜像使用Java
FROM java:9
# 作者
MAINTAINER janche
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为app.jar
# 此处可以把具体的jar包名称写出来，我这里直接用*号代替了
ADD ./ruoyi-admin/target/ruoyi-admin.jar
ENTRYPOINT ["java","-jar","/ruoyi-admin.jar"]
# 指定容器需要映射到主机的端口
EXPOSE 8080
