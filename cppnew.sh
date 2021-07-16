#!/bin/bash

# ARGS
while [[ "$#" -gt 0 ]]; do
	case $1 in
		-c|--class) class="$2"; shift ;;
		-n|--namespace) namespace="$2"; shift ;;
		-m|--main) main=1 ;;
 		*) echo "Unknown parameter passed: $1"; exit 1 ;;
	esac
    shift
done



# CASE 1: CLASS
if [ "$class" != "" ]; then

# Header
touch "${class}.hpp"
cat <<EOT >> "${class}.hpp"
class ${class} {
	public:
		${class}();
	private:
};
EOT

# Source
touch "${class}.cpp"
cat <<EOT >> "${class}.cpp"
#include "${class}.hpp"

${class}::${class}()
{

}
EOT
	
echo "Created new class \"${class}\""




# CASE 2: NAMESPACE
elif [ "$namespace" != "" ]; then

# Header
touch "${namespace}.hpp"
cat <<EOT >> "${namespace}.hpp"
namespace ${namespace} {

}
EOT

# Source
touch "${namespace}.cpp"
cat <<EOT >> "${namespace}.cpp"
#include "${namespace}.hpp"

namespace ${namespace} {

}
EOT

echo "Created new namespace \"${namespace}\""




# CASE 3: MAIN
elif [ "$main" == "1" ]; then

touch "main.cpp"
cat <<EOT >> main.cpp
int main (int argc, char* argv[])
{
	return 0;
}
EOT

echo "Created new main"




# CASE 4: ???
else
	echo ""
	echo "I hear this Jesus guy is pretty cool. You know, Jesus? Yeah, you know him, he drives that blue car?"
	echo "Jesus says you suck at using this script. See he can be mean sometimes, we all can."
fi
