//
//  PaypalPaymentService.m
//  Lab12
//
//  Created by Tomonao Hashiguchi on 2022-09-13.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (BOOL)canProcessPayment
{
	NSInteger i = arc4random_uniform(1);
	return i == 0 ? NO : YES;
}

- (void)processPaymentAmount:(NSInteger)amount {
	NSLog(@"Payment amount: %lu \nPayment method: Paypal", amount);
}

@end
