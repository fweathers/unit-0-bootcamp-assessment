//
//  ViewController.h
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"

@interface ViewController : UIViewController

//Changed Positive to Negative
- (NSInteger)shouldReturnANegativeNSInteger;
//Changed Negative to Positive
- (CGFloat)shouldReturnAPositiveCGFloat;
//Changed Falsey to Positive
- (BOOL)shouldReturnAPositiveBool;
//Changed A to Z to 0 to 9
- (char)shouldReturnACharCtoL;
- (NSInteger)shouldReturnAverageOfArrayValues :(int *)arr withSize:(int)arrSize;
//Changed 100 to 1000
- (NSInteger)shouldReturnSumOf0To1000;
- (char)shouldReturnCharAfterG:(char *)str;
- (NSInteger)productOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber;
- (BOOL)isEven:(NSInteger)number;
- (BOOL)isMultipleOfTen:(NSInteger)number;
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber andThisNumberIsEven:(NSInteger)bNumber;
- (int)returnSumOfAllItemsGreaterThan100:(int *)arr withSize:(int)size;
- (NSString *)shouldReturnCarModel:(Car *)car;
- (void)changeCarModelToFirebird:(Car *)car;
- (CGFloat)tellCarToDrive4MilesAndReturnFuelLevel:(Car *)car;
- (Car *)createAndReturnANewCar;

@end

