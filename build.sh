#!/bin/bash

exdir=$(dirname `readlink -f "$0"`)

cd "$exdir"/Source/STL
rm -fr bin
dotnet build STL-netcore.csproj

cd "$exdir"
