//
//  ViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (CGFloat)shouldReturnAPositiveInt {
    return 0;
}

- (CGFloat)shouldReturnANegativeFloat {
    return 0.0;
}

- (BOOL)shouldReturnANegativeBool {
    return 0.0;
}

- (NSInteger)shouldReturnSumOf0To100 {
    return 0.0;
}

- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    return 0;
}

- (char)shouldReturnACharAtoZ {
    return 0;
}

- (BOOL)isOdd:(NSInteger)number {
    return NO;
}

- (BOOL)isMultipleOfFive:(NSInteger)number {
    return NO;
}

- (NSString *)shouldReturnPersonsName:(Person *)person {
    return @"";
}

- (void)changePersonsNameToAdaLovelace:(Person *)person {
    
}

- (Person *)createAndReturnPersonWithSomeProperties {
    return [Person new];
}

- (void)makePersonSitInChair:(Chair *)chair {

}

- (void)makePersonStandUp:(Person *)person {
    
}

@end
