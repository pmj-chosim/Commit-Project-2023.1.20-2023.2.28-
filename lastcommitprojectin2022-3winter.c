//모레 개강이니 자구를 위해 c를 공부.. 새로운 라이브러리 사용 <unistd>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define BUFFER_SIZE 1024

int copy_file(const char* source_filename, const char* target_filename);
void print_usage();

int main(int argc, char* argv[]) {
    int opt;
    char* target_dir = NULL;

    while ((opt = getopt(argc, argv, "d:")) != -1) {
        switch (opt) {
            case 'd':
                target_dir = optarg;
                break;
            default:
                print_usage();
                exit(EXIT_FAILURE);
        }
    }

    if (argc - optind < 2) {
        print_usage();
        exit(EXIT_FAILURE);
    }

    for (int i = optind; i < argc - 1; i++) {
        if (target_dir) {
            char* target_filename = strrchr(argv[i], '/') + 1;
            if (!target_filename) {
                target_filename = argv[i];
            }
            char target_path[strlen(target_dir) + strlen(target_filename) + 2];
            sprintf(target_path, "%s/%s", target_dir, target_filename);
            copy_file(argv[i], target_path);
        } else {
            copy_file(argv[i], argv[argc - 1]);
        }
    }

    return 0;
}

int copy_file(const char* source_filename, const char* target_filename) {
    FILE* source = fopen(source_filename, "r");
    if (!source) {
        fprintf(stderr, "Error: Cannot open source file '%s'\n", source_filename);
        return 1;
    }

    FILE* target = fopen(target_filename, "w");
    if (!target) {
        fprintf(stderr, "Error: Cannot create target file '%s'\n", target_filename);
        fclose(source);
        return 1;
    }

    char buffer[BUFFER_SIZE];
    size_t count;
    while ((count = fread(buffer, 1, BUFFER_SIZE, source))) {
        if (fwrite(buffer, 1, count, target) != count) {
            fprintf(stderr, "Error: Write error on target file '%s'\n", target_filename);
            fclose(source);
            fclose(target);
            return 1;
        }
    }

    fclose(source);
    fclose(target);
    printf("File '%s' copied to '%s'\n", source_filename, target_filename);

    return 0;
}

void print_usage() {
    fprintf(stderr, "Usage: filecopy [-d target_directory] source_file1 [source_file2 ...] target_file\n");
}