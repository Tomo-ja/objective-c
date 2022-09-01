//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
	self = [super init];
	if (self) {

		NSUInteger l = arc4random_uniform(91) + 10;
		NSUInteger r = arc4random_uniform(91) + 10;
		
		_question = [NSString stringWithFormat:@"%lu + %lu ?", l, r];
		_answer = l + r;
	}
	return self;
}
@end
