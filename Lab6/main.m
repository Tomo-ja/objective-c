//
//  main.m
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

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
		GameController *controller = [[GameController alloc] initWithArrayOfDices:allDices];

		while (gameGoesOn && [controller remainingRolls] > 0) {
			NSString *nextAction = [GameController inputForPrompt:menuPrompt];
			
			if ([nextAction isEqualToString:@"roll"]) {
				[controller rollDie];
			}
			else if ([nextAction isEqualToString:@"hold"]){
				NSString *holdDice = [GameController inputForPrompt:@"Which dice would you like to hold? Input single number 1 to 5"];
				[controller holdDie:holdDice];
			}
			else if ([nextAction isEqualToString:@"reset"]){
				[controller resetDie];
			}
			else if ([nextAction isEqualToString:@"display"]){
				[controller printStats];
				continue;
			}
			else if ([nextAction isEqualToString:@"done"]) {
				gameGoesOn = NO;
			}

			[controller printStats];
		}
		[controller printResult];
	}
	return 0;
}
