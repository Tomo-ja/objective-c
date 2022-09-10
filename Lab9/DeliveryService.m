//
//  DeliveryService.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-10.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@interface DeliveryService()

@property (nonatomic, strong) NSMutableArray *records;
@property (nonatomic, strong) DeliveryCar *deliveryCar;

@end

@implementation DeliveryService

- (instancetype)init
{
	self = [super init];
	if (self) {
		_records = [NSMutableArray new];
		_deliveryCar = [DeliveryCar new];
	}
	return self;
}

-(void)deliverPizza: (Pizza *)pizza
{
	NSLog(@"here");
	[_records addObject: pizza];
	[_deliveryCar deliverPizza: pizza];
}

-(NSString *)deliverdPizzaRecords
{
	NSString *allRecords = @"";
	for (Pizza *pizza in _records){
		NSString *detail = [NSString stringWithFormat:@"\n > size: %@ toppings: %@", [pizza sizeString], [pizza toppingsString]];
		allRecords = [allRecords stringByAppendingString:detail];
	}
	return allRecords;
}

@end
