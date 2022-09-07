//
//  NSString+PigLatinization.m
//  Lab7
//
//  Created by Tomonao Hashiguchi on 2022-09-06.
//

#import "NSString+PigLatinization.h"


@implementation NSString (PigLatinization)

-(NSString *)wordByPigLatinization: (NSString *)word
{
	NSDictionary *clusters = @{ @"Ch": @2, @"Sh": @2, @"Sm": @2, @"St": @2, @"Th": @2, @"Ps": @2, @"Ph": @2, @"Pl": @2, @"Gl": @2};
	NSDictionary *vowel = @{@"A": @-1, @"I": @-1, @"U": @-1, @"E": @-1, @"O": @-1,};
	
	int consonant = clusters[[word substringToIndex:2]] == 0 ? vowel[[word substringToIndex:1]] == 0 ? 1 : 0 : 2;
	return consonant != 0 ? [[word substringFromIndex:consonant] stringByAppendingFormat:@"%@ay", [word substringToIndex:consonant]] : word;
}

-(NSString *)stringByPigLatinization
{
	NSArray *stringArray = [self componentsSeparatedByString:@" "];
	NSString *string = @"";
	for (NSString *word in stringArray){
		string = [string stringByAppendingFormat:@"%@ ", [[self wordByPigLatinization:[word capitalizedString]] capitalizedString]];
	}
	return string;
}

@end

// need to call capitalized
