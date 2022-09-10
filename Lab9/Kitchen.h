//
//  Kitchen.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface Kitchen : NSObject

@property (nonatomic, weak)id<KitchenDelegate>delegate;

-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end

NS_ASSUME_NONNULL_END
