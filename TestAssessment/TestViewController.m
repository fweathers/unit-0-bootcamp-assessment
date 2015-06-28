//
//  TestViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "TestViewController.h"
#import "Person.h"
#import "Chair.h"


@implementation TestViewController


/*
    This method should return a positive NSInteger (cannot be 0)
 */
- (void)shouldReturnAPositiveInt {
}

/*
    This method should return negative CGFloat (cannot be 0)
 */
- (void)shouldReturnANegativeFloat {
}

/*
    This method should return a negative boolean
 */
- (void)shouldReturnANegativeBool {
}

- (void)shouldReturnACharAtoZ {
}

/*
    This method should return the sum of all numbers from 
    0 - 99 (eg. 1 + 2 + 3 + ...)
 */

- (NSInteger)shouldReturnSumOf0To100 {
    return 0;
}

/*
    This method should return the sum of aNumber and bNumber
 */

- (NSInteger)sumOfAnInteger:(NSInteger)aNumber andAnotherInteger:(NSInteger)bNumber {
    return 0;
}


/*
    This method should return a YES if aNumber is odd
 */

- (BOOL)isOdd:(NSInteger)aNumber {
    return NO;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */

- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    return NO;
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */

- (NSString *)shouldReturnPersonsName:(Person *)person {
    return @"";
}

/*
    This method should change the person name to "Ada Lovelace"
 */
- (void)changePersonsNameToAdaLovelace:(Person *)person {
}

/*
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
- (Person *)createAndReturnPersonWithSomeProperties {
    return [Person new];
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair
 */

- (void)makePersonSitInChair:(Chair *)chair {
}

/*
    Ask the person to stand up our of their chair
 */
- (void)makePersonStandUp:(Person *)person {
}

@end
