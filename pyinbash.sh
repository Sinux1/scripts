#!/bin/bash

echo "Executing a bash statement"
export bashvar=100

cat << EOF > pyscript.py
#!/usr/bin/python3
import subprocess

print ('Hello python')
subprocess.call(["echo","$bashvar"])

EOF

chmod 755 pyscript.py

./pyscript.py
