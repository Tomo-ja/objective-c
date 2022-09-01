//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
	self = [super init];
	if (self) {
		_right = 0;
		_wrong = 0;
	}
	return self;
}


- (NSString *)result {
	NSUInteger persent = round((double)_right / (_right + _wrong) * 100);
	NSString *sentence = [NSString stringWithFormat:@"score: %lu right, %lu wrong ---- %lu", _right, _wrong, persent];
	
	return [sentence stringByAppendingString:@"%"] ;
}

@end
