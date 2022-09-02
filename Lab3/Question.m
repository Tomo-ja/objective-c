//
//  Question.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
	self = [super init];
	if (self) {
		
		_rightValue = arc4random_uniform(91) + 10;
		_leftValue = arc4random_uniform(91) + 10;
		
		_startTime = [NSDate date];
		
		_question = @"";
		_answer = 0;
	}
	return self;
}

- (void)generateQuestion {
	
}

- (NSUInteger)answer {
	_endTime = [NSDate date];
	return _answer;
}

- (NSTimeInterval)answerTime{
	return [_endTime timeIntervalSinceDate:_startTime];
}

@end
