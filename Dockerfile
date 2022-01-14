#镜像
FROM golang:1.12.14
#将服务器的go工程代码加入到docker容器中
RUN mkdir -p /src/GP
COPY . /src/GP
WORKDIR /src/GP
RUN go build main.go
RUN chmod 777 main
CMD ["./main"]