//
//  FriendlyGreedingDecider.h
//  Lab8
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "GreeterDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface FriendlyGreedingDecider : NSObject<GreeterDelegate>

-(BOOL)shouldSayHello;

@end

NS_ASSUME_NONNULL_END
