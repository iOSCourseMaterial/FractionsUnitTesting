//
//  RHFraction.m
//  FunWithFractions
//
//  Created by Jimmy Theis on 3/26/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import "RHFraction.h"


@interface RHFraction ()

- (NSInteger)gcdOfFirstInteger:(NSInteger)int1 secondInteger:(NSInteger)int2;

@end


@implementation RHFraction

@synthesize numerator = _numerator;
@synthesize denominator = _denominator;

- (id)initWithNumerator:(NSInteger)numerator denominator:(NSInteger)denominator {
    if (denominator == 0) return nil;
    
    self = [super init];
    
    if (self) {
        NSInteger gcd = [self gcdOfFirstInteger:numerator secondInteger:denominator];
        
        if (denominator < 0) gcd = -gcd;
        
        self.numerator = numerator / gcd;
        self.denominator = denominator / gcd;
    }
    
    return self;
}

- (id)initWithWholeNumber:(NSInteger)number {
    return [self initWithNumerator:number denominator:1];
}

#pragma mark - Class Methods

+ (id)one {
    return [[RHFraction alloc] initWithWholeNumber:1];
}

+ (id)zero {
    return [[RHFraction alloc] initWithWholeNumber:0];
}

+ (id)negativeOne {
    return [[RHFraction alloc] initWithWholeNumber:-1];
}

+ (id)fractionWithNumerator:(NSInteger)numerator denominator:(NSInteger)denominator {
    return [[RHFraction alloc] initWithNumerator:numerator denominator:denominator];
}

#pragma mark - NSObject Overrides

- (id)init {
    return [self initWithWholeNumber:1];
}

- (NSString *)description {
    if (self.denominator == 1) {
        return [NSString stringWithFormat:@"%d", self.numerator];
    }
    
    return [NSString stringWithFormat:@"%d/%d", self.numerator, self.denominator];
}

#pragma mark - Private Methods

- (NSInteger)gcdOfFirstInteger:(NSInteger)int1 secondInteger:(NSInteger)int2 {
    NSInteger temp;
    
    while (int2 != 0) {
        temp = int2;
        int2 = int1 % int2;
        int1 = temp;
    }
    
    return abs(int1);
}

@end
