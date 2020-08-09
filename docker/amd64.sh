#!/bin/bash
cp ./DockerFile ../DockerFile

if [ "$(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip')" = 'microsoft' ]; then
  powershell.exe "cd .. ; docker build -f ./DockerFile . -t elyspio/external-server:amd64"
else
  cd .. && docker build -f ./DockerFile . -t elyspio/external-server:amd64
fi

docker push elyspio/external-server:amd64

rm ../DockerFile
