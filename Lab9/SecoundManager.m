//
//  SecoundManager.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import "SecoundManager.h"

@implementation SecoundManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
	return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
	[self sayCompliment];
	return YES;
}

-(void)sayCompliment
{
	NSLog(@"Buono~~");
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{}

@end
