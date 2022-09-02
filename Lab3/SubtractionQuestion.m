//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
	self = [super init];
	if (self) {
		[self generateQuestion];
	}
	return self;
}

-(void)generateQuestion {
	[self setAnswer:[self leftValue] - [self rightValue]];
	[self setQuestion:[NSString stringWithFormat:@"%lu - %lu ?", [self leftValue], [self rightValue]]];
}

@end
