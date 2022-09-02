//
//  QuestionManager.h
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions;
@property NSUInteger totalTime;

- (NSString *)timeOutput;

@end

NS_ASSUME_NONNULL_END
