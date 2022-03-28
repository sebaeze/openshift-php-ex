FROM   ubi8/ubi:8.0
#
LABEL  MAINTAINER='Sebastian Andreoletti'  \
       io.openshift.tags='do288,php,s2i'   \
       io.openshift.services='8080,http'   \
       io.openshift.description='oc run --name name1 --build-env AMBIENTE=dev --quay.io/andreole/php-custom:1.0 '
#
RUN    yum install -y php \
    && yum clean all
#
USER   1001
EXPOSE 8080 8443
#
CMD    
