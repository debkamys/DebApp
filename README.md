# DebApp

## About

The repository includes a script that will build, test, and publish this simple project. It will go on to build a Docker image from the published output and then push it to a container registry. The unit test is built to check the asserted facts that simple math equations are correct as well as to confirm the proposed theory that a list of numbers only contains odd numbers. The [DebTest.cs](/DebApp.csproj) file supplied in this repository contains factual data that will allow the test to pass; to confirm that the test is valid please change data in this file and run a simple `dotnet test`.

## Prerequisites
- Git
- .Net Core 5.0
- Docker
- Credentials to container registry

## Steps

1.  Fork this repository
2.  Clone to your local drive
3.  cd to the `DebApp` folder in CLI/IDE of your choice
4.  Enter command `./build-push.sh`
[NOTE: Bash script permissions may need to be assigned locally. If you receive a permissions error, enter command `chmod 755 build-push.sh` and then repeat Step 4.]

## The `build-push` script will run the following operations

1.  dotnet build
2.  dotnet test
3.  dotnet publish
4.  docker build
5.  docker tag
6.  docker push

## Notes

- As indicated above, the validity of the unit test can be confirmed by changing data in the DebTest.cs file and then running a dotnet test command.

- Steps 5 and 6 are currently hard-coded to my GCP account. If you would like to perform these steps using your own credentials, please edit the `build-push.sh` script and run the script again.
