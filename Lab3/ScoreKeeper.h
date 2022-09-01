//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSUInteger right;
@property (nonatomic, assign) NSUInteger wrong;

- (NSString *)result;

@end

NS_ASSUME_NONNULL_END
