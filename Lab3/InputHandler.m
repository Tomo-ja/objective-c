//
//  InputHandler.m
//  Lab3
//
//  Created by Tomonao Hashiguchi on 2022-09-01.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput{
	int maxLength = 255;
	char inputChars[maxLength];
	char *input = fgets(inputChars, maxLength, stdin);
	
	if (input != NULL) {
		NSString *result = [[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
		return result;
	}
	return NULL;
}

@end
