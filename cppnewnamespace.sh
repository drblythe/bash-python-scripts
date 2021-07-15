#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Namespace name not provided"
	exit
fi

namespacename=$1


# Header
touch "${namespacename}.hpp"
cat <<EOT >> "${namespacename}.hpp"
namespace ${namespacename} {

}
EOT

# Source
touch "${namespacename}.cpp"
cat <<EOT >> "${namespacename}.cpp"
#include "${namespacename}.hpp"

namespace ${namespacename} {

}
EOT


echo "Created new class \"${namespacename}\""
