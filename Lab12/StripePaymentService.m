//
//  StripePaymentService.m
//  Lab12
//
//  Created by Tomonao Hashiguchi on 2022-09-13.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (BOOL)canProcessPayment
{
	NSInteger i = arc4random_uniform(1);
	return i == 0 ? NO : YES;
}

- (void)processPaymentAmount:(NSInteger)amount {
	NSLog(@"Payment amount: %lu \nPayment method: Stripe", amount);
}
@end
