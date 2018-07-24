FROM microsoft/dotnet:2.1-sdk
RUN apt-get update -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs -y
RUN npm install -g serverless@1.28.0
RUN apt-get install awscli -y
RUN dotnet tool install -g dotnet-xunit-to-junit
ENV PATH="$PATH:/root/.dotnet/tools"