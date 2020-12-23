FROM mcr.microsoft.com/dotnet/aspnet:latest
WORKDIR /app
COPY /app ./
ENTRYPOINT ["dotnet", "app/capstoneASP.dll"]

