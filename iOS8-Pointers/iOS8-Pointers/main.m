//
//  main.m
//  iOS8-Pointers
//
//  Created by Michael Redig on 10/10/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

// Function declartion
void cStringExercise(void);
void pointerTest(void);


int main(int argc, const char * argv[]) {
	@autoreleasepool {
//		pointerTest();

		cStringExercise();


	}
	return 0;
}


// Function definition

// Goal: Print Your Name
void cStringExercise(void) {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated

    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);

    unsigned long length = strlen(message);
    char *ptr = malloc(sizeof(char) * length);
    ptr = strcpy(ptr, message);

    ptr[6] = 'P'; // START HERE

	char *myName = "Michael";
	unsigned long nameLength = strlen(myName);

	for (int i = 0; i < nameLength; i++) {
		ptr[6 + i] = myName[i];
	}
	ptr[6 + nameLength] = '!';
	ptr[6 + nameLength + 1] = '\0';


     // Set your name!
     // Null terminate with '\0'

    printf("message: %s\n", ptr);

    free(ptr);
}

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
