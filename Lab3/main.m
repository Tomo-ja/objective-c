//
//  main.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"MATHS!");
		BOOL gameOn = 1;
		ScoreKeeper *score = [[ScoreKeeper alloc] init];
		
		while (gameOn) {
			AdditionQuestion *question = [[AdditionQuestion alloc] init];
			NSLog(@"%@", [question question]);
			
			NSString *input = [InputHandler getUserInput];
			
			if ([input isEqualToString:@"quit"]) {
				gameOn = 0;
				continue;
			}
			NSInteger inputAsNumber = [input integerValue];
			
			if (inputAsNumber == [question answer]) {
				NSLog(@"Right!");
				[score setRight:[score right] + 1];
			} else {
				NSLog(@"Wrong!");
				[score setWrong:[score wrong] + 1];
			}
		}
		
		NSString *result = [score result];
		NSLog(@"%@", result);
	}
	return 0;
}
