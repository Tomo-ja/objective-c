//
//  ContactList.m
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
	self = [super init];
	if (self) {
		_contacts = [NSMutableArray new];
	}
	return self;
}

- (void)addContact: (Contact *)newContact{
	[_contacts addObject:newContact];
}

- (void)displayAllContacts {
	NSInteger id = 0;
	for (Contact *constact in _contacts) {
		NSLog(@"%lu: %@", id, [constact name]);
		id = id + 1;
	}
}

@end
