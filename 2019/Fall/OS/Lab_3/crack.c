#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <crypt.h>
#include <string.h>
#include <pthread.h>

int max_size;
char* goal;
int curr_size = 1;
int done = 0;
char* sol;
long int curr_pw = 0;
long int possible_pws = 26;
const char letter[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
pthread_mutex_t lock_inc;
pthread_mutex_t lock_loop;
pthread_mutex_t lock_crypt;
pthread_mutex_t lock_validation;

char* generate_string(long int key) {
  char* pw = (char*) malloc(sizeof(char) *curr_size+1);
  int i = 0;
  long int temp_key = key;
  while(i < curr_size) {
    int rem = temp_key % 26;
    temp_key /= 26;
    pw[curr_size-i-1] = letter[rem];
    ++i;
  }
  pw[i] = '\0';
  // printf("%s\n", pw);
  return pw;
}

void remove_spaces(char* input) {
  int count = 0;
  int i = 0;
  while(input[i]) {
    if(input[i] != ' ') input[count++] = input[i];
    ++i;
  }
  input[count] = '\0';
}

char* encrypt_string(char* pw, char* salt) {
  pthread_mutex_lock(&lock_crypt);
  char* result = crypt(pw, salt);
  if(result == NULL) perror("crypt");
  pthread_mutex_unlock(&lock_crypt);
  return result;
}

void* thread_entry(void *param) {
  char* salt_ptr = (char*)param;
  char* str;
  while(curr_size <= max_size) {
    while(curr_pw < possible_pws) {
        pthread_mutex_lock(&lock_inc);
        long int key = curr_pw++;
        pthread_mutex_unlock(&lock_inc);
        str = generate_string(key);
        // printf("%s\n", str);
        // remove_spaces(str);
        pthread_mutex_lock(&lock_validation);
        char* encrypted = encrypt_string(str, salt_ptr);
        if(strcmp(goal, encrypted) == 0) {
          sol = str;
          done = 1;
        }
        pthread_mutex_unlock(&lock_validation);
        if(done == 1) return NULL;
    }
    if(done == 1) return NULL;
    pthread_mutex_lock(&lock_loop);
    curr_size++;
    curr_pw = 0;
    possible_pws = (long int)(powl(26, curr_size));
    pthread_mutex_unlock(&lock_loop);
  }
  return NULL;
}

int main(int argc, char** argv) {
  int threads = atoi(argv[1]);
  pthread_t pthreads[threads];
  
  max_size = atoi(argv[2]);
  goal = argv[3];
  char* salt = (char*) malloc(sizeof(char) * 3);
  salt[0] = goal[0];
  salt[1] = goal[1];
  salt[2] = '\0';
  printf("Crypt: %s\nSalt: %s\n", goal, salt);
  int i = 0;
  while(i < threads) {
    if(pthread_create(&pthreads[i], NULL, thread_entry, salt)) {
        perror("pthread_create");
        return 1;
    }
    ++i;
  }
  i = 0;
  while(i < threads) {
      if(pthread_join(pthreads[i], NULL)) {
          perror("pthread_join");
          return 2;
      }
      i++;
  }
  pthread_mutex_destroy(&lock_inc);
  pthread_mutex_destroy(&lock_loop);
  pthread_mutex_destroy(&lock_crypt);
  pthread_mutex_destroy(&lock_validation);
  
  printf("Found password: %s\n", sol);
  return 0;
}
