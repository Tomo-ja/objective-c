//
//  main.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "Question.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		NSLog(@"MATHS!");
		BOOL gameOn = 1;
		ScoreKeeper *score = [[ScoreKeeper alloc] init];
		QuestionManager *manager = [[QuestionManager alloc] init];
		QuestionFactory *factory = [[QuestionFactory alloc] init];
		
		
		while (gameOn) {
			Question *question = [factory generateQuestion];
			[[manager questions] addObject:question];
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
			
			NSLog(@"%@", [manager timeOutput]);
		}
		
		NSString *result = [score result];
		NSLog(@"%@", result);
		

	}
	return 0;
}
