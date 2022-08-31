//
//  Box.m
//  Lab2
//
//  Created by Tomonao Hashiguchi on 2022-08-31.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight: (float)height andWidth: (float)width andLength: (float)length
{
	self = [super init];
	if (self) {
		_height = height;
		_width = width;
		_length = length;
	}
	return self;
}

- (float)volume {
	return _height * _width * _length;
}

- (int)fillUpWith: (Box *)box {
	float v1 = [self volume];
	float v2 = [box volume];
	if (v1 < v2) {
		return 0;
	}
	return  v1 / v2;
}

@end
