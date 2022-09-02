//
//  main.m
//  Collections
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		// this is not mutable
		NSArray *myArr = [[NSArray alloc] init];
		NSString *first = [myArr objectAtIndex:0];
		NSString *secound = myArr[1];
		NSUInteger count = [myArr count];
		
		NSMutableArray *myArr2 = [[NSMutableArray alloc] initWithObjects:@"Monday", @"Tuesday ", nil];
		NSMutableArray *myArry3 = [NSMutableArray new]
		
		[myArr2 addObject:@"January"];
		
		for (NSString *obj in myArr2) {
			// do something...
		}
		
		// NSSet, NSMutableSet
		NSMutableSet *mySet = [NSMutableSet new];
		[mySet addObject:@"one"];
		[mySet addObject:@"one"];
		
		// NSDictionary, NSMutableDictionary
		NSMutableDictionary *myDict = [NSMutableDictionary new];
		[myDict setObject:@"Vancouver" forKey:@"city"];
		myDict[@"country"] = @"Canada";
		
		NSString *country = myDict[@"country"];
		
	}
	return 0;
}
