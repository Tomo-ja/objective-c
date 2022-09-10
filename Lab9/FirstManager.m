//
//  FirstManager.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import "FirstManager.h"

@implementation FirstManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
	return ![toppings containsObject:@"anchovies"];
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
	return NO;
}

@end
