//
//  Pizza.m
//  Lab9
//
//  Created by Tomonao Hashiguchi on 2022-09-08.
//

#import "Pizza.h"

@interface Pizza ()

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

@end


@implementation Pizza

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings
{
	self = [super init];
	if (self) {
		_size = size;
		_toppings = toppings;
	}
	return self;
}

-(PizzaSize)size
{
	return _size;
}

-(NSArray *)toppings
{
	return _toppings;
}

-(NSString *)sizeString
{
	switch(_size) {
		case small:
			return @"small";
		case medium:
			return @"medium";
		case large:
			return @"large";
	}
}

-(NSString *)toppingsString
{
	NSString *res = @"";
	for (NSString *t in _toppings) {
		res = [res stringByAppendingString: t];
	}
	return res;
}

@end
