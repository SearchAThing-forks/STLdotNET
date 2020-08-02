#!/bin/bash

exdir=$(dirname `readlink -f "$0"`)

cd "$exdir"/Source/STL
rm -fr bin
dotnet pack -c Release STL-netcore.csproj
dotnet nuget push "$exdir"/Source/STL/bin/Release/*.nupkg -k $(cat ~/security/nuget-api.key) -s https://api.nuget.org/v3/index.json

cd "$exdir"
