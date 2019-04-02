# --- download ---

FROM alpine:3.9.2 as download

RUN wget https://github.com/Meituan-Dianping/walle/releases/download/v1.1.6/walle-cli-all.jar

# --- prod ---

FROM openjdk:8-jdk-alpine as prod

MAINTAINER v7lin <v7lin@qq.com>

COPY --from=download /walle-cli-all.jar /walle/
