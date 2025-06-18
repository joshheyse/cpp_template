#include "lib.h"
#include <iostream>

void run() { std::cout << "Hello, World!" << std::endl; }

unsigned int Factorial(unsigned int number) {
  return number <= 1 ? number : Factorial(number - 1) * number;
}
