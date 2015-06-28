//
//  ViewController.h
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController

- (NSInteger)shouldReturnAPositiveInt;
- (CGFloat)shouldReturnANegativeFloat;
- (BOOL)shouldReturnANegativeBool;
- (char)shouldReturnACharAtoZ;
- (NSInteger)shouldReturnSumOf0To100;
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber;
- (BOOL)isOdd:(NSInteger)number;
- (BOOL)isMultipleOfFive:(NSInteger)number;
- (NSString *)shouldReturnPersonsName:(Person *)person;
- (void)changePersonsNameToAdaLovelace:(Person *)person;

@end

