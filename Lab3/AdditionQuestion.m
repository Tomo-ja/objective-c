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
		[self generateQuestion];
	}
	return self;
}

-(void)generateQuestion {
	[self setAnswer:[self leftValue] + [self rightValue]];
	[self setQuestion:[NSString stringWithFormat:@"%lu + %lu ?", [self leftValue], [self rightValue]]];
}

@end
