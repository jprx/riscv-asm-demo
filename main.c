#include <stdint.h>

typedef uint64_t u64;

// ASM will create a struct like this and pass it to us using a pointer
typedef struct {
  u64 a; // +0x00
  u64 b; // +0x08
  u64 c; // +0x10
  u64 d; // +0x18
} some_data_t;

u64 add(some_data_t *data) {
  return data->a + data->b + data->c + data->d;
}
