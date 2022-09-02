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

- (void)showContactDetail: (NSString *)id {
	NSInteger idx = [id integerValue];
	if (idx < 0 || idx >= [_contacts count]){
		NSLog(@"Not found");
		return;
	}
	Contact *target = _contacts[idx];
	
	NSLog(@"Name: %@", [target name]);
	NSLog(@"Email: %@", [target email]);
}

- (void)searchContact: (NSString *)keyword {
	BOOL found = 0;
	for (Contact *contact in _contacts) {
		if ([contact.name rangeOfString:keyword].location != NSNotFound) {
			NSLog(@"Name: %@", [contact name]);
			NSLog(@"Email: %@", [contact email]);
			found = 1;
			continue;
		}
		if ([contact.email rangeOfString:keyword].location != NSNotFound) {
			NSLog(@"Name: %@", [contact name]);
			NSLog(@"Email: %@", [contact email]);
			found = 1;
		}
	}
	if (found == 0){
		NSLog(@"No hit by keyword %@", keyword);
	}
}

- (BOOL)isAlreadyExist: (NSString *)newEmail {
	for (Contact *contact in _contacts) {
		if ([contact.email isEqualToString:newEmail]) {
			return true;
		}
	}
	return false;
}

@end
