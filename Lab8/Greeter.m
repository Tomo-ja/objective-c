//
//  Greeter.m
//  Lab8
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import "Greeter.h"

@implementation Greeter

-(void)sayHello{
	if([_delegate shouldSayHello]) {
		NSLog(@"Hello");
	} else {
		NSLog(@"...");
	}
}

@end
