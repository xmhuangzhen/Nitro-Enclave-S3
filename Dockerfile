FROM public.ecr.aws/amazonlinux/amazonlinux:2

RUN amazon-linux-extras install epel -y
RUN yum install python3 iproute nginx certbot -y

WORKDIR /app

COPY run.sh ./

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]