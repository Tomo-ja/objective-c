//
//  Contact.h
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;

- (instancetype)initWithName: (NSString *)name andEmail: (NSString *)email;


@end

NS_ASSUME_NONNULL_END
