//
//  AmazonPaymentService.m
//  Lab12
//
//  Created by Tomonao Hashiguchi on 2022-09-13.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService


- (BOOL)canProcessPayment
{
	NSInteger i = arc4random_uniform(1);
	return i == 0 ? NO : YES;
}

- (void)processPaymentAmount:(NSInteger)amount {
	NSLog(@"Payment amount: %lu \nPayment method: Amazon", amount);
}

@end
