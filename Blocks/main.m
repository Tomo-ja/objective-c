//
//  main.m
//  Blocks
//
//  Created by Tomonao Hashiguchi on 2022-09-12.
//

#import <Foundation/Foundation.h>
#import "BlockTester.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		BlockTester *tester = [BlockTester new];
		[tester runTest2];
	}
	return 0;
}
