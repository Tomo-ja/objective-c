//
//  main.m
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NSString *menuPrompt = @"\nroll - Roll the dices"
						"\nhold - Hold a dice"
						"\nreset - Un-hold all dices"
						"\ndone - End the game"
						"\ndisplay - Show current stats";

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		BOOL gameGoesOn = YES;
		
		Dice *dice1 = [[Dice alloc] init];
		Dice *dice2 = [[Dice alloc] init];
		Dice *dice3 = [[Dice alloc] init];
		Dice *dice4 = [[Dice alloc] init];
		Dice *dice5 = [[Dice alloc] init];
		
		NSArray *allDices = [NSArray arrayWithObjects:dice1, dice2, dice3, dice4, dice5, nil];
		NSMutableArray *diceHolded = @[@(NO), @(NO), @(NO), @(NO), @(NO)];
		
		
		
		int idx = 0;
		for (Dice *dice in allDices){
			if ([diceHolded objectAtIndex:idx] != NO) {
				[dice rollDice];
			}
			idx = idx + 1;
		}
		
		for (Dice *dice in allDices){
			NSLog(@"%lu", dice.value);
		}

//		while (gameGoesOn) {
//			int idx = 0;
//			for (Dice *dice in allDices){
//				if (!diceHoled[idx]) {
//					[dice rollDice];
//				}
//				idx = idx + 1;
//			}
//		}
		
		
	}
	return 0;
}
