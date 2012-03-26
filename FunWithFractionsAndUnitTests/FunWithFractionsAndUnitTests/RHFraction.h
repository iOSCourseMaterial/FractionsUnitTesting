//
//  RHFraction.h
//  FunWithFractions
//
//  Created by Jimmy Theis on 3/26/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RHFraction : NSObject

@property (nonatomic, assign) NSInteger numerator;
@property (nonatomic, assign) NSInteger denominator;

- (id)initWithNumerator:(NSInteger)numerator denominator:(NSInteger)denominator;
- (id)initWithWholeNumber:(NSInteger)number;

+ (id)one;
+ (id)zero;
+ (id)negativeOne;
+ (id)fractionWithNumerator:(NSInteger)numerator denominator:(NSInteger)denominator;

@end
