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
- (void)shouldReturnAPositiveNSInteger {
}

/*
    This method should return negative CGFloat (cannot be 0)
 */
- (void)shouldReturnANegativeCGFloat {
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */
- (void)shouldReturnAFalseyBool {
}

/*
    This method should return a single char from a - z
 */
- (void)shouldReturnACharAtoZ {
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (int)shouldReturnSumOfArrayValues:(int *)arr withSize:(int)count {
    return 0;
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (eg. 1 + 2 + 3 + ... + 98 + 99)
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

// char array

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
    return [[Person alloc] init];
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


/* 
    Create and return an NSArray containing 6 NSString objects
 */

- (NSArray *)createAndReturnNSArray {
    return [[NSArray alloc] init];
}

// BONUS
/* 
    Update the array item at index 4 to be the name of the person passed
    as a parameter
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableArray_Class/
 */

- (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr toPersonsName:(Person *)person {
    
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str xNumberOfTimes:(NSInteger)numberOfTimes {
    return @"";
}

@end
