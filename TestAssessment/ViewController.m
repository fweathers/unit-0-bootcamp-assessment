//
//  ViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (NSInteger)shouldReturnAPositiveNSInteger {
    return 0;
}

- (CGFloat)shouldReturnANegativeCGFloat {
    return 0.0;
}

- (BOOL)shouldReturnAFalseyBool {
    return 0.0;
}

- (int)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)arrSize {
    return 0;
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
    return [[Person alloc] init];
}

- (void)makePersonSitInChair:(Chair *)chair {

}

- (void)makePersonStandUp:(Person *)person {
    
}

- (NSArray *)createAndReturnNSArray {
    return @[];
}

- (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr toPersonsName:(Person *)person {
    
}

- (NSString *)repeatString:(NSString *)str numberOfTimes:(NSInteger)numberOfTimes {
    return @"";
}

@end
