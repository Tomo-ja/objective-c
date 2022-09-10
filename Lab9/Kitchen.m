//
//  Kitchen.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import "Kitchen.h"


@implementation Kitchen

- (instancetype)initWithDeliveryService: (DeliveryService *)deliveeryService
{
	self = [super init];
	if (self) {
		_deliveryService = deliveeryService;
	}
	return self;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
	if (![_delegate kitchen: self shouldMakePizzaOfSize: size andToppings: toppings]) {
		return NULL;
	}
	
	Pizza *pizza;
	
	if([_delegate kitchenShouldUpgradeOrder: self]) {
		PizzaSize lgSize = large;
		pizza = [[Pizza alloc] initWithSize:lgSize andToppings:toppings];
	} else {
		pizza = [[Pizza alloc] initWithSize: size andToppings:toppings];
	}
	
	if([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
		[_delegate kitchenDidMakePizza: pizza];
		[_deliveryService deliverPizza: pizza];
	}
	
	return pizza;
}

@end
