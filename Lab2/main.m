//
//  main.m
//  Lab2
//
//  Created by Tomonao Hashiguchi on 2022-08-31.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Box *box1 = [[Box alloc] initWithHeight:5 andWidth:5 andLength:10];
		Box *box2 = [[Box alloc] initWithHeight:10 andWidth:5 andLength:1];
		int res = [box1 fillUpWith:box2];
		NSLog(@"%d", res);
		
	}
	return 0;
}
