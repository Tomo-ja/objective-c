//
//  Question.h
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSUInteger rightValue;
@property (nonatomic) NSUInteger leftValue;

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSUInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (NSTimeInterval)answerTime;
- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
