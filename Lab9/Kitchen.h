//
//  Kitchen.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface Kitchen : NSObject

@property (nonatomic, weak)id<KitchenDelegate>delegate;
@property (nonatomic, strong) DeliveryService *deliveryService;

- (instancetype)initWithDeliveryService: (DeliveryService *)deliveeryService;
-(Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end

NS_ASSUME_NONNULL_END
