//
//  RegularCustomer.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import "RegularCustomer.h"


@implementation RegularCustomer

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
	return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
	return NO;
}

@end
