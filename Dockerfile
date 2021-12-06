FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY bin/Release/net5.0/publish/ DebTest/
WORKDIR /DebTest
ENV DOTNET_EnableDiagnostics=0
ENTRYPOINT ["dotnet", "DebTest.dll"]
