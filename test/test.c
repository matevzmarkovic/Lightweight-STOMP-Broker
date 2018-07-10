#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <broker.h>
#include <test.h>

int main(void) {
  
  test_broker_seed();
  
  puts("Testing complete.");
  return EXIT_SUCCESS;
}

void test_broker_seed() {
  puts("Testing broker seed... I am a spoon pot");
  assert(get_broker_seed() > 0 );
}
