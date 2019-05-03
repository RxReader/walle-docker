# walle-docker

[![Build Status](https://cloud.drone.io/api/badges/v7lin/walle-docker/status.svg)](https://cloud.drone.io/v7lin/walle-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/v7lin/walle.svg)](https://hub.docker.com/r/v7lin/walle)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/v7lin/walle-docker/blob/master/LICENSE)

### 项目源码

[Meituan-Dianping/walle](https://github.com/Meituan-Dianping/walle)

### usage

* docker

````
docker run --rm -it -v ${PWD}:/channel v7lin/walle sh -c "java -jar /walle/walle-cli-all.jar put -c qihoo360 /channel/app.apk && java -jar /walle/walle-cli-all.jar show /channel/app_qihoo360.apk"
docker run --rm -it -v ${PWD}:/channel v7lin/walle sh -c "java -jar /walle/walle-cli-all.jar batch -c official,huawei,xiaomi,oppo,vivo,alibaba,baidu /channel/app.apk && ls /channel"
````

* drone

````
- name: walle
  image: v7lin/walle
  commands:
  - java -jar /walle/walle-cli-all.jar batch -c official,huawei,xiaomi,oppo,vivo,alibaba,baidu /app/build/outputs/apk/release/app-release.apk
  - java -jar /walle/walle-cli-all.jar put -c tencent /app/build/outputs/apk/release/app-release-legu.apk
  - java -jar /walle/walle-cli-all.jar put -c qihoo360 /app/build/outputs/apk/release/app-release-jiagu.apk
````
