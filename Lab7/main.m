//
//  main.m
//  Lab7
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

NSDictionary *clusters = @{ @"Ch": @2, @"Sh": @2, @"Sm": @2, @"St": @2, @"Th": @2, @"Ps": @2, @"Ph": @2, @"Pl": @2, @"Gl": @2};


int main(int argc, const char * argv[]) {
	@autoreleasepool {

		NSString *testString = @"Kale Chips";
		NSLog(@"%@", [testString stringByPigLatinization]);
	}
	return 0;
}
