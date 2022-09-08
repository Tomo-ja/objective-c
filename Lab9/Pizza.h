//
//  Pizza.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, PizzaSize) {
	small,
	medium,
	large,
};

@interface Pizza : NSObject

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings;

-(PizzaSize)size;
-(NSArray *)toppings;

@end

NS_ASSUME_NONNULL_END
