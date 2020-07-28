FROM centos:latest

WORKDIR /build

RUN mkdir otp

RUN curl -L -O https://github.com/erlang/otp/archive/OTP-21.3.8.17.tar.gz

RUN tar zxvfp *.tar.gz -C otp --strip-components=1


