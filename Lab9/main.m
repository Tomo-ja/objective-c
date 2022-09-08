//
//  main.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSLog(@"Please pick your pizza size and toppings:");
		
		Kitchen *restaurantKitchen = [Kitchen new];
		
		while (TRUE) {
			// Loop forever
			
			NSLog(@"> ");
			char str[100];
			fgets (str, 100, stdin);
			
			NSString *inputString = [[NSString alloc] initWithUTF8String:str];
			inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
			
			NSLog(@"Input was %@", inputString);
			
			// Take the first word of the command as the size, and the rest as the toppings
			NSMutableArray *commandWords = [inputString componentsSeparatedByString:@" "];
			NSString *commandSize = commandWords[0];
			PizzaSize size;
			if ([commandSize isEqualToString:@"small"]) {
				size = (PizzaSize)small;
			} else if ([commandSize isEqualToString:@"medium"]) {
				size = (PizzaSize)medium;
			} else if ([commandSize isEqualToString:@"large"]) {
				size = (PizzaSize)large;
			} else {
				size = (PizzaSize)medium;
			}
			
			[commandWords removeObjectAtIndex:0];
			
			Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:commandWords];
			
			NSLog(@"%lu", [pizza size]);
			NSLog(@"%@", [pizza toppings]);
			
			
			// And then send some message to the kitchen...
			
		}

	}
	return 0;
}
