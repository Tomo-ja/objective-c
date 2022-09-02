//
//  InputConllector.m
//  Lab5
//
//  Created by Tomonao Hashiguchi on 2022-09-02.
//

#import "InputConllector.h"

@implementation InputConllector

- (NSString *)inputForPrompt:(NSString *)promptString{
	NSLog(@"%@", promptString);
	char inputChars[255];
	
	char *input = fgets(inputChars, 255, stdin);
	if (input != NULL) {
		return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	}
	return NULL;
}

@end
