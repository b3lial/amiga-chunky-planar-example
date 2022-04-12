// Copyright 2021 Christian Ammann

#include "cp-example.h"

int main(void) {
    /*
     * Nothing special here, just run the test
     * function which invokes two example asm
     * hello world methods and uses p2c to convert
     * a planar into a chunky buffer.
     */
    chunkyTests();
    exit(RETURN_OK);
}
