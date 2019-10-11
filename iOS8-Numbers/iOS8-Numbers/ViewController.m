//
//  ViewController.m
//  iOS8-Numbers
//
//  Created by Michael Redig on 10/10/19.
//  Copyright © 2019 Red_Egg Productions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	NSNumber* one = @1; //[NSNumber numberWithInt:1];
	NSNumber* two = @2; //[NSNumber numberWithInt:2];
	NSNumber* three = @3; //[NSNumber numberWithInt:3];

	NSArray* numArray = [NSArray arrayWithObjects:
						 one,
						 two,
						 three,
						 nil];

	NSLog(@"%@", numArray);


	int length = 20;
    int *ptr = malloc(sizeof(int) * length);

	for (int i = 0; i < length; i++) {
		ptr[i] = i;
	}

	printf("%i - %i - %lu - %p - %d", ptr[0], *ptr, ptr, ptr, *ptr);
}


@end
