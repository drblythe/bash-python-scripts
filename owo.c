#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char* owofied(char const str[]) {
    size_t owo_str_len = 0;

    for (char const* it = str; *it; ++it) {
        owo_str_len += 1 + (*it == 'i' || *it == 'e');
    }

    char* const owo_str = malloc(owo_str_len + 5);  // " owo" + null byte
    assert(owo_str);
    char* owo_str_it = owo_str;

    for (char const* it = str; *it; ++it) {
        if (*it == 'i' || *it == 'e') {
            *owo_str_it++ = 'w';
        }
        *owo_str_it++ = *it;
    }

    *owo_str_it++ = ' ';
    *owo_str_it++ = 'o';
    *owo_str_it++ = 'w';
    *owo_str_it++ = 'o';
    *owo_str_it = '\0';

    return owo_str;
}

int main(int argc, char* argv[])
{
	if (argc < 2) {
		char *owo = owofied("Usage: owoify <text>\nYou didn't give any text to make owo and that makes me sadface!:((");
		printf("%s\n",owo);
		free(owo);
		return 0;
	}
	int n = 1;
	for (int i = 1; i < argc; i++) {
		n += strlen(argv[i]) + 1;
	}
	char owo[n];
	strcpy(owo, argv[1]);
	for (int i = 2; i < argc; i++) {
		strcat(owo, " ");
		strcat(owo, argv[i]);
	}
	char *uwu = owofied(owo);
	printf("%s\n",uwu);
	free(uwu);
	return 0;
}

