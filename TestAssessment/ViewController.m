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

- (int)returnSumOfAllItemsGreaterThan100:(int *)arr withSize:(int)size {
    return 0;
}

- (char)shouldReturnCharAfterG:(char *)str {
   return '\0';
}

- (char)shouldReturnACharCtoL {
    return 'a';
}

- (BOOL)isEven:(NSInteger)number {
    return NO;
}

- (BOOL)isMultipleOfTen:(NSInteger)number {
    return NO;
}

- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber andThisNumberIsEven:(NSInteger)bNumber {
    return NO;
}

- (NSString *)shouldReturnCarModel:(Car *)car {
    return @"";
}

- (void)changeCarModelToFirebird:(Car *)car {
    
}

- (CGFloat)tellCarToDrive4MilesAndReturnFuelLevel:(Car *)car {
    return 0.0;
}

- (Car *)createAndReturnANewCar {
    return [Car new];
}

@end
