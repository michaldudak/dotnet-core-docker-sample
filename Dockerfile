FROM michaldudak/dotnet-cli-daily:rc2-002543

RUN mkdir /app
WORKDIR /app

COPY ./project.json .
COPY ./NuGet.config .
RUN dotnet restore

COPY . .
RUN dotnet build

EXPOSE 5000

ENTRYPOINT ["dotnet", "run"]
