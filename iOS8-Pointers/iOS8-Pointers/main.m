//
//  main.m
//  iOS8-Pointers
//
//  Created by Michael Redig on 10/10/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

void pointerTest(void) {
	char letter = 't';

	printf("letter: %c\n", letter);

	long value = 42;
	printf("value: %li\n", value);

	printf("value: %li\n", value);

	// Pointer to a "long" number
	long *addressOfValue = &value; // & = address of
	printf("addressOfValue: %p\n", addressOfValue);
	printf("&value: %p\n", &value);

	// Dereference the pointer (go to the GPS address)
	printf("*addressOfValue: %li\n", *addressOfValue);

	char *ptr = "Hello, world!\n";
	printf("ptr: %s", ptr);
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
//		pointerTest();

		

	}
	return 0;
}
