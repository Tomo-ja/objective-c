//
//  main.m
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import <Foundation/Foundation.h>
#import "InputConllector.h"
#import "Contact.h"
#import "ContactList.h"

NSString *menuPrompt = @"\nWhat would you like to do next?"
						"\nnew - Create a new contact"
						"\nlist - List all contacts"
						"\nshow - See contact details"
						"\nfind - Find contact by keyword"
						"\nquit - Exit Application";

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		BOOL appGoesOn = 1;
		ContactList *contactList = [[ContactList alloc] init];
		
		while (appGoesOn){
			InputConllector *inputConllector = [[InputConllector alloc] init];
			NSString *nextAction = [inputConllector inputForPrompt:menuPrompt];
			
			if ([nextAction isEqualToString:@"new"]){
				NSString *email = [inputConllector inputForPrompt:@"Enter new contact email"];
				if ([contactList isAlreadyExist:email]){
					NSLog(@"account already exist with email: %@", email);
					continue;
				}
				NSString *name = [inputConllector inputForPrompt:@"Enter new contact name"];
				Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
				[contactList addContact:newContact];
			}
			
			if ([nextAction isEqualToString:@"list"]) {
				[contactList displayAllContacts];
			}
			
			if ([nextAction isEqualToString:@"show"]){
				NSString *id = [inputConllector inputForPrompt:@"Enter contact id"];
				[contactList showContactDetail:id];
			}
			
			if ([nextAction isEqualToString:@"find"]){
				NSString *keyword = [inputConllector inputForPrompt:@"Enter key word you want to search by"];
				[contactList searchContact:keyword];
			}
			
			if ([nextAction isEqualToString:@"quit"]){
				appGoesOn = 0;
			}
		}
		

		
	    
	}
	return 0;
}
