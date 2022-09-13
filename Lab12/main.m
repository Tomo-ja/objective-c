//
//  main.m
//  Lab12
//
//  Created by Tomonao Hashiguchi on 2022-09-13.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		PaypalPaymentService *paypal = [PaypalPaymentService new];
		StripePaymentService *stripe = [StripePaymentService new];
		AmazonPaymentService *amazon = [AmazonPaymentService new];
		ApplePaymentService *apple = [ApplePaymentService new];
		
		// random bill 100 ~ 1000
		NSUInteger dollarValue = 100 + arc4random() % (1000 - 100);
		// let user choose payment method
		NSLog(@"\nThank you for shoppping at Acme.com. Your total today is $%lu. \nPlease select your payment method: \n1: Paypal \n2: Stripe \n3: Amazon \n4: ApplePay", dollarValue);
		NSUInteger paymentMethod;
		char inputChars[255];
		char *input = fgets(inputChars, 255, stdin);
		if(input != NULL) {
			NSString *inputMethod = [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
			paymentMethod = [inputMethod intValue];
		} else {
			NSLog(@"Invaild menthod");
			return 0;
		}
		
		PaymentGateway *paymentGateway = [PaymentGateway new];

		if (paymentMethod == 1) {
			[paymentGateway setDelegate: paypal];
		} else if (paymentMethod == 2){
			[paymentGateway setDelegate: stripe];
		} else if (paymentMethod == 3){
			[paymentGateway setDelegate: amazon];
		} else if (paymentMethod == 3){
			[paymentGateway setDelegate: apple];
		} else {
			NSLog(@"Invaild menthod");
			return 0;
		}

		if ([[paymentGateway delegate] canProcessPayment]) {
			[[paymentGateway delegate] processPaymentAmount:dollarValue];
		} else {
			NSLog(@"Sorry, we can't process payment at this moment. Try different method");
		}
		
		
	}
	return 0;
}
