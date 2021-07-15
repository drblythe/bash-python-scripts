#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Class name not provided"
	exit
fi

classname=$1

# Header
touch "${classname}.hpp"
cat <<EOT >> "${classname}.hpp"
class ${classname} {
	public:
		${classname}();
	private:
};
EOT


# Source
touch "${classname}.cpp"
cat <<EOT >> "${classname}.cpp"
#include "${classname}.hpp"

${classname}::${classname}()
{

}
EOT



echo "Created new class \"${classname}\""
