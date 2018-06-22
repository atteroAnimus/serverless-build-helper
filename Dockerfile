FROM microsoft/dotnet:2.1-sdk
RUN apt-get update -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs -y
RUN npm install -g serverless