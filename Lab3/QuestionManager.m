//
//  QuestionManager.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
	self = [super init];
	if (self) {
		_questions = [NSMutableArray new];
		_totalTime = 0;
	}
	return self;
}

- (NSString *)timeOutput {
	NSUInteger currnetTimeCost = [(AdditionQuestion *)[_questions lastObject] answerTime];
	_totalTime = currnetTimeCost + _totalTime;
	NSUInteger ave = _totalTime / [_questions count];
	
	return [NSString stringWithFormat:@"total time: %lus, average time: %lus", _totalTime, ave ];;
}

@end
