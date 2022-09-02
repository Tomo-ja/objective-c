//
//  ContactList.h
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

- (void)addContact: (Contact *)newContact;
- (void)displayAllContacts;
- (void)showContactDetail: (NSString *)id;
- (void)searchContact: (NSString *)keyword;
- (BOOL)isAlreadyExist: (NSString *)newEmail ;

@end

NS_ASSUME_NONNULL_END
