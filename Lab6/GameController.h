//
//  GameController.h
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *allDice;
@property (nonatomic, strong) NSMutableArray *diceHolded;
@property (nonatomic, strong) NSArray *dicePictures;
@property NSUInteger remainingRolls;
@property NSUInteger score;

+ (NSString *)inputForPrompt:(NSString *)promptString;
- (instancetype)initWithArrayOfDices: (NSArray *)dices;
-(void)rollDie;
-(void)holdDie: (NSString *)die;
-(void)resetDie;
-(void)printStats;
-(void)printResult;

@end

NS_ASSUME_NONNULL_END
