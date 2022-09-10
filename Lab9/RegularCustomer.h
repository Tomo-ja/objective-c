//
//  RegularCustomer.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegularCustomer : NSObject<KitchenDelegate>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end

NS_ASSUME_NONNULL_END
