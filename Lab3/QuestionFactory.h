//
//  QuestionFactory.h
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionSubclassNames;

-(Question *)generateQuestion;

@end

NS_ASSUME_NONNULL_END
