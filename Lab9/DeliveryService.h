//
//  DeliveryService.h
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

-(void)deliverPizza: (Pizza *)pizza;
-(NSString *)deliverdPizzaRecords;


@end

NS_ASSUME_NONNULL_END
