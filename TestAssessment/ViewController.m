//
//  ViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//Updated by Franklin on 7/11/2015

#import "ViewController.h"

@implementation ViewController

- (NSInteger)shouldReturnANegativeNSInteger {
    return 0;
}

- (CGFloat)shouldReturnAPositiveCGFloat {
    return 0.0;
}

- (BOOL)shouldReturnAPositiveBool {
    return 0.0;
}

- (NSInteger)shouldReturnAverageOfArrayValues :(int *)arr withSize:(int)arrSize {
    return 0;
}

- (NSInteger)shouldReturnSumOf0To1000 {
    return 0.0;
}

- (NSInteger)productOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    return 0;
}

- (int)returnSumWhileSumIsLessThan1050:(int *)arr {
    return 0;
}

- (char)shouldReturnCharAfterQ:(char *)str {
   return '\0';
}

- (char)ShouldReturnAChar0to9 {
    return 0;
}

- (BOOL)isOdd:(NSInteger)number {
    return NO;
}

- (BOOL)isMultipleOfFive:(NSInteger)number {
    return NO;
}

- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber andThisNumberIsEven:(NSInteger)bNumber {
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
