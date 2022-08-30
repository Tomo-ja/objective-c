//
//  main.m
//  Lab1
//
//  Created by Tomonao Hashiguchi on 2022-08-30.
//

#import <Foundation/Foundation.h>

NSString *prompt = @"\n"
"Enter option's number\n"
"1. Uppercase\n"
"2. Lowercase\n"
"3. Numberize\n"
"4. Canaianize\n"
"5. Respond\n"
"6. De-Space-it\n"
"7. Change the word\n"
"q. quit";


NSString *getUserInput(int maxLength, NSString *prompt) {
  if (maxLength < 1) {
	maxLength = 255;
  }
  char inputChars[maxLength];

  NSLog(@"%@", prompt);
  char *result = fgets(inputChars, maxLength, stdin);
  if (result != NULL) {
	return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  }
  return NULL;
}


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		BOOL quitting = 0;
		
		while (!quitting) {
			NSString *targetWord = getUserInput(255, @"\nEnter target word");
			BOOL keepModifying = 1;
			
			while (keepModifying) {
				NSString *option = getUserInput(255, prompt);
				if ([option isEqualToString:@"1"]) {
					NSString *upperCased = [targetWord uppercaseString];
					NSLog(@"%@", upperCased);
				} else if ([option isEqualToString:@"2"]) {
					NSString *lowerCased = [targetWord lowercaseString];
					NSLog(@"%@", lowerCased);
				} else if ([option isEqualToString:@"3"]) {
					NSUInteger numbers = [targetWord integerValue];
					if (numbers == 0) {
						NSString *st = [[NSString alloc]initWithFormat:@"%lu", numbers];
						if ([st isEqualToString:targetWord]) {
							NSLog(@"%lu", numbers);
						} else {
							NSLog(@"Target value is not number");
						}
					} else {
						NSLog(@"%lu", numbers);
					}
				} else if ([option isEqualToString:@"4"]) {
					NSString *canadian = [targetWord stringByAppendingString:@", eh?"];
					NSLog(@"%@", canadian);
				} else if ([option isEqualToString:@"5"]) {
					NSString *last = [targetWord substringFromIndex:[targetWord length] - 1];
					if([last isEqualToString:@"?"]){
						NSLog(@"I don't know");
					} else if ([last isEqualToString:@"!"]){
						NSLog(@"Whoa, calm down!");
					}
				} else if ([option isEqualToString:@"6"]) {
					NSString *formatted = [targetWord stringByReplacingOccurrencesOfString:@" " withString:@"-"];
					NSLog(@"%@", formatted);
				} else if ([option isEqualToString:@"7"]) {
					keepModifying = 0;
				} else if ([option isEqualToString:@"q"]) {
					keepModifying = 0;
					quitting = 1;
				} else {
					NSLog(@"please input single number or q to quit");
				}
			}
		}
	}
	return 0;
}
