//
//  DeliveryCar.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import <Foundation/Foundation.h>
@class Pizza;

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

-(void)deliverPizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
