//
//  Contact.m
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *)name andEmail: (NSString *)email
{
	self = [super init];
	if (self) {
		_name = name;
		_email = email;
	}
	return self;
}

@end
