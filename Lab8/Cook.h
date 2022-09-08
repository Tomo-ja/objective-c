//
//  Cook.h
//  Lab8
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cook : NSObject<FoodTruckDelegate>;

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

NS_ASSUME_NONNULL_END
