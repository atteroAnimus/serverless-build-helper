FROM microsoft/dotnet:2.1-sdk
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN npm install -g serverless