//
//  GameController.m
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)initWithArrayOfDices: (NSArray *)dices
{
	self = [super init];
	if (self) {
		_dicePictures = [NSArray arrayWithObjects:@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
		_allDice = dices;
		_diceHolded = [NSMutableArray arrayWithObjects:@"NO", @"NO", @"NO", @"NO", @"NO", @"NO", nil];
		_remainingRolls = 6;
		_score = 0;
	}
	return self;
}

+ (NSString *)inputForPrompt:(NSString *)promptString
{
	NSLog(@"%@", promptString);
	char inputChars[255];
	
	char *input = fgets(inputChars, 255, stdin);
	if (input != NULL) {
		return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	}
	return NULL;
}

-(NSString *)visualizeDice
{
	NSString *outPut = @"";
	int idx = 0;
	for (Dice *dice in _allDice) {
		NSString *pic = _dicePictures[dice.value - 1];
		if ([_diceHolded[idx] isEqualToString:@"YES"]){
			outPut = [outPut stringByAppendingFormat:@"%@%@%@", @" [", pic, @"] "];
		} else {
			outPut = [outPut stringByAppendingFormat:@"%@%@%@", @" ", pic, @" "];
		}
		idx = idx + 1;
	}
	return outPut;
}

-(void)holdDie: (NSString *)die
{
	NSInteger dice = [die intValue] - 1;
	Dice *d = _allDice[dice];
	if ([_diceHolded[dice] isEqualToString:@"NO"]){
		_diceHolded[dice] = @"YES";
		_score = _score + d.value;
	} else {
		_diceHolded[dice] = @"NO";
		_score = _score - d.value;
	}
}

-(void)resetDie
{
	_diceHolded = [NSMutableArray arrayWithObjects:@"NO", @"NO", @"NO", @"NO", @"NO", @"NO", nil];
	_score = 0;
}

-(void)rollDie
{
	_remainingRolls = _remainingRolls - 1;
	int idx = 0;
	for (Dice *dice in _allDice){
		if([_diceHolded[idx] isEqualToString:@"NO"]){
			[dice rollDice];
		}
		idx = idx + 1;
	}
}

-(void)printStats
{
	NSString *outPutDice = [self visualizeDice];
	NSLog(@"Remaining Rolls; %lu", _remainingRolls);
	NSLog(@"----------------------");
	NSLog(@"--   Cureent Dice   --");
	NSLog(@"%@", outPutDice);
	NSLog(@"--   Total Score    --");
	NSLog(@"Score: %lu", _score);
	NSLog(@"----------------------");
}

-(void)printResult
{
	int idx = 0;
	for (Dice *dice in _allDice) {
		if([_diceHolded[idx] isEqualToString:@"NO"]){
			_score = _score + dice.value;
		}
	}
	NSLog(@"Your result in this game is %lu", _score);
}

@end
