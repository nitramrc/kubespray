#!/bin/bash


cat <<EOT > machines.txt
k8s-1
k8s-2
k8s-3
EOT

# cat machines.txt | xargs -P3 -I {} vagrant up --provision {}
cat machines.txt | xargs -P3 -I {} vagrant up {}
