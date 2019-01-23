FROM microsoft/dotnet:2.1-sdk
RUN apt-get update -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install nodejs -y \
    && npm install -g serverless@latest \
    && npm install -g serverless-domain-manager \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; python get-pip.py \
    && pip install awscli \
    && dotnet tool install -g dotnet-xunit-to-junit \
    && apt-get install -y curl gnupg apt-transport-https \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list' \
    && apt-get update -y \
    && apt-get install -y powershell
ENV PATH="$PATH:/root/.dotnet/tools"