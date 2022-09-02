//
//  QuestionFactory.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (instancetype)init
{
	self = [super init];
	if (self) {
		NSArray *_questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
	}
	return self;
}


-(Question *)generateQuestion{
	int idx = arc4random_uniform(4);
	NSString *className = [[self questionSubclassNames] objectAtIndex:idx];
	return [[NSClassFromString(className) alloc]init];
}

@end
