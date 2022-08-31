//
//  Box.h
//  Lab2
//
//  Created by Tomonao Hashiguchi on 2022-08-31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight: (float)height andWidth: (float)width andLength: (float)length;
- (float)volume;
- (int)fillUpWith: (Box *)box;

@end

NS_ASSUME_NONNULL_END
