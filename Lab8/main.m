//
//  main.m
//  Lab8
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "Cook.h"
#import "FoodTruck.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Cook *cook = [[Cook alloc] init];
		FoodTruck *foodTruck = [[FoodTruck alloc] init];
		
		foodTruck.delegate = cook;
		
	}
	return 0;
}
