//
//  BlockTester.m
//  Blocks
//
//  Created by Tomonao Hashiguchi on 2022-09-12.
//

#import "BlockTester.h"

@implementation BlockTester

-(void) runTest1
{
 // create and call a block
	void (^myblock) (id, NSUInteger, BOOL *);
	
	myblock = ^(id obj, NSUInteger index, BOOL *stop) {
		NSLog(@"Hello %@", obj);
	};
	
	BOOL stop;
	myblock(@"Vancouver", 0, &stop);
}

- (void) runTest2 {
	// passing a block to a  method
	NSArray *names = @[@"Luke", @"Ronaldo", @"Neymar"];
	[names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSLog(@"Hello %lu - %@", idx, obj, (*stop ? @"T" : @"F"));
	}];
}

- (void) runTest3 {
	// passing a block to a  method
	NSArray *names = @[@"Luke", @"Ronaldo", @"Neymar", @"Robert"];
	NSString *letter = @"R";
	
	// value type can't be change inside of blocks so we need to make it reference type by using __block
	__block int startsR = 0;
	[names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		if ([letter isEqualToString:[obj substringToIndex:1]]) {
			startsR ++;
		}
		NSLog(@"Hello %lu - %@", idx, obj, (*stop ? @"T" : @"F"));
	}];
}

@end
