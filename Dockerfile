FROM microsoft/aspnetcore-build:latest
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN npm install -g serverless