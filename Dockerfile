FROM centos
MAINTAINER canfei <canfei.wang@qq.com>
RUN yum install -y git gcc make \
    && git clone https://github.com/RedisLabs/redis-cluster-proxy \
    && cd redis-cluster-proxy \
    && make distclean&&make install \
    && yum remove -y git gcc make \
    && cd .. && rm -rf redis-cluster-proxy
