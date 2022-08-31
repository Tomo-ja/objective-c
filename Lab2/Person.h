//
//  Person.h
//  Lab2
//
//  Created by Tomonao Hashiguchi on 2022-08-31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;

- (instancetype)initWithName: (NSString *)name andAge: (NSUInteger)age;
- (void)printInfo;
+ (void)hello;

@end

NS_ASSUME_NONNULL_END
