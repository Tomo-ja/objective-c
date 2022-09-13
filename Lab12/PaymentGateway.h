//
//  PaymentGateway.h
//  Lab12
//
//  Created by Tomonao Hashiguchi on 2022-09-13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (BOOL)canProcessPayment;
- (void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak)id<PaymentDelegate>delegate;
- (void)processPaymentAmount:(NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
