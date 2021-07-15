#!/bin/bash

if [ $# -lt 1 ]; then
	mainname="main"
else
	mainname=$1
fi


touch "${mainname}.cpp"
cat <<EOT >> "${mainname}.cpp"
int main (int argc, char* argv[])
{
	return 0;
}
EOT

echo "Created new main \"${mainname}\""
