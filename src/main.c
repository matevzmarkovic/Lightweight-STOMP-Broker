#include <broker.h>
#include <stdlib.h>

int main(void) {
  switch (init_broker()) {
    case INIT_SUCCESS:
      return EXIT_SUCCESS;
      
    case INIT_FAILURE:
      return EXIT_FAILURE;
      
    default:
      return EXIT_FAILURE;
  }
}
