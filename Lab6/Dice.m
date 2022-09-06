//
//  Dice.m
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
	self = [super init];
	if (self) {
		_value = 1 + arc4random() % 6;
	}
	return self;
}

-(void)rollDice {
	NSUInteger randomV = 1 + arc4random() % 6;
	_value = randomV;
}

@end
