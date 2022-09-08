//
//  GreeterDelegate.h
//  Lab8
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate <NSObject>

-(BOOL)shouldSayHello;

@end

NS_ASSUME_NONNULL_END
