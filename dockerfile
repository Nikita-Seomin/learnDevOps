FROM gcc:11 AS build
WORKDIR /APP
COPY . .
RUN g++ app.cpp -o app.exe 

#FROM alpine:3.15
#RUN apk add --no-cache libstdc++
#COPY --from=build APP/app.exe ./app.exe
#CMD ./app.exe

FROM ubuntu:20.04
COPY --from=build APP/app.exe ./app.exe
CMD ./app.exe
