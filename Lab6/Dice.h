//
//  Dice.h
//  Lab6
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic, assign) NSUInteger value;

-(void)rollDice;

@end

NS_ASSUME_NONNULL_END
