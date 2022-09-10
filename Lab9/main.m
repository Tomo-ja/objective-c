//
//  main.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "FirstManager.h"
#import "SecoundManager.h"
#import "RegularCustomer.h"
#import "DeliveryService.h"


PizzaSize pizzaSizeDecider(NSString* inputedSize) {
	if ([inputedSize isEqualToString:@"small"]) {
		return (PizzaSize)small;
	} else if ([inputedSize isEqualToString:@"medium"]) {
		return (PizzaSize)medium;
	} else if ([inputedSize isEqualToString:@"large"]) {
		return (PizzaSize)large;
	} else {
		 return (PizzaSize)medium;
	}
	
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
	
		
		DeliveryService *deliveryService = [DeliveryService new];
		Kitchen *restaurantKitchen = [[Kitchen alloc] initWithDeliveryService:deliveryService];
		RegularCustomer *regularCustomer = [RegularCustomer new];
		FirstManager *firstManager = [FirstManager new];
		SecoundManager *secoundManager = [SecoundManager new];
		
		NSLog(@"Please pick your pizza size and toppings:");

		int managerId = 0;
		
		while (TRUE) {
			
			NSLog(@"> ");
			char str[100];
			fgets (str, 100, stdin);
			
			NSString *inputString = [[NSString alloc] initWithUTF8String:str];
			inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
			
			NSLog(@"Input was %@", inputString);
			
			// select manager
			NSLog(@"Input Manager ID. if you are not, put 0");
			fgets (str, 100, stdin);
			NSString *managerStringId = [[NSString alloc] initWithUTF8String:str];
			managerStringId = [managerStringId stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
			managerId = [managerStringId intValue];
			
			if(managerId == 1) {
				restaurantKitchen.delegate = firstManager;
			} else if (managerId == 2) {
				restaurantKitchen.delegate = secoundManager;
			} else {
				restaurantKitchen.delegate = regularCustomer;
			}
			
			// Take the first word of the command as the size, and the rest as the toppings
			NSMutableArray *commandWords = [inputString componentsSeparatedByString:@" "];
			NSString *commandSize = commandWords[0];
			
			PizzaSize size = pizzaSizeDecider(commandSize);
			[commandWords removeObjectAtIndex:0];
			
			// And then send some message to the kitchen...
			Pizza *pizza = [restaurantKitchen makePizzaWithSize: size toppings: commandWords];
			
			NSLog(@"%@", [restaurantKitchen.deliveryService deliverdPizzaRecords]);
		}

	}
	return 0;
}
