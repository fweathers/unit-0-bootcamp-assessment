//
//  TestViewController.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

// Updated by Franklin on 7/11/2015

#import "TestViewController.h"
#import "Person.h"
#import "Chair.h"


@implementation TestViewController

//Changed positive to negative
/*
    This method should return any positive NSInteger 
    (hint: cannot be 0)
 */
- (NSInteger)shouldReturnANegativeNSInteger {
//    NSInteger ourPositiveInteger = 2;
//    return ourPositiveInteger;
    
    return -1;
}

/*
    This method should return any negative CGFloat 
    (hint: cannot be 0)
 */
- (CGFloat)shouldReturnAPositiveCGFloat {
    return 8.0;
}

/*
    This method should return a falsy boolean
    Falsey: Something which evaluates to FALSE.
 */
- (BOOL)shouldReturnAPositiveBool {
    return YES;
}

/*
    This method should return a single char from a - z
 */
- (char)ShouldReturnAChar0to9 {
    return '0';
}

/*
    This method should return the sum of all numbers from 
    0 - 99 using a loop (. 1 + 2 + 3 + ... + 98 + 99)
 */
- (NSInteger)shouldReturnSumOf0To1000 {
    NSInteger sum = 0;
    for (int i = 0; i < 1000; i++) {
        NSLog(@"%d", i);
        sum = sum + i;
    }
    
    return sum;
}

/*
    Given a c array (int[]) and a count, return the sum of the numbers within the arr
    (eg. arr[0] + arr[1] ...)
 */
- (NSInteger)shouldReturnSumOfArrayValues:(int *)arr
                                 withSize:(int)count {
    NSInteger sum = 0;
    
    for (int i = 0; i < count; i++) {
        sum = sum + arr[i];
    }
    
    return sum;
}

/*
    Provided a C string (array of chars), return the character
    that immediately preceeds the letter q
    (ex. "aionkljajvqlkjaml" would return the letter 'v')
    (hint: while loop)
 */
- (char)shouldReturnCharAfterQ:(char *)str {
    
    for (int i = 0; i < strlen(str); i++) {
        printf("%c", str[i]);
        if (str[i] == 'q') {
            return str[i + 1];
        }
    }
    
    return '\0';
}

/*
    This method should return the sum of aNumber + bNumber
 */
- (NSInteger)sumOfAnInteger:(NSInteger)aNumber
          andAnotherInteger:(NSInteger)bNumber {
    return aNumber + bNumber;
}


/*
    This method should return a YES if aNumber is odd
 */
- (BOOL)isOdd:(NSInteger)aNumber {
    if (aNumber % 2 != 0) {
        return YES;
    } else {
        return NO;
    }
//    return NO;
    
//    return aNumber % 2 != 0;
}

/*
    This method should return YES if aNumber is a multiple of 5
 */
- (BOOL)isMultipleOfFive:(NSInteger)aNumber {
    return aNumber % 5 == 0;
}

/*
    This method should return YES is aNumber is odd and bNumber is even
 */
- (BOOL)returnYesIfThisNumberIsOdd:(NSInteger)aNumber
               andThisNumberIsEven:(NSInteger)bNumber {
    return (aNumber % 2 != 0) && (bNumber % 2 == 0);
//    return [self isOdd:aNumber] && ![self isOdd:bNumber];
}

/*
    This method should return the name property of the person
    parameter (hint: command + click on class name to jump to the interface.
 */
- (NSString *)shouldReturnPersonsName:(Person *)person {
    return [person name];
}

/*
    This method should change the person name to "Ada Lovelace"
 */
- (void)changePersonsNameToAdaLovelace:(Person *)person {
    [person setName:@"Ada Lovelace"];
}

/*
    This method should do the following:
    1) Create an instance of Person
    2) Set the person's name to "Santa Clause"
    3) Set the person's age to 1823
 */
- (Person *)createAndReturnPersonWithSomeProperties {
    Person *santa = [[Person alloc] init];
    [santa setName:@"Santa Clause"];
    [santa setAge:1823];
    return santa;
}

/*
    This method provides you an instance of Chair as a parameter
    1) Create an instance of Person
    2) Tell the person to sit in the chair 
    (hint: take a look at the methods on the Person class)
 
 */
- (void)makePersonSitInChair:(Chair *)chair {
    Person *mike = [[Person alloc] init];
    [mike sitInChair:chair];
}

/*
    This method provides you an instance of Person as a parameter
    Send a message to this Person object telling it to stand up
 */
- (void)makePersonStandUp:(Person *)person {
    [person standUp];
}

/*
    Create and return an NSArray containing 6 NSString objects
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSArray_Class/
 */
- (NSArray *)createAndReturnNSArray {
//    NSString *one = @"one";
//    NSString *two = @"two";
//    NSString *three = @"three";
//    NSString *four = @"four";
//    NSString *five = @"five";
//    NSString *six = @"six";
//    NSArray *ourArray = [NSArray arrayWithObjects:one, two, three, four, five, six, nil];
    
//    NSArray *ourArray = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", nil];
    return [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", nil];
}

// BONUS
/* 
    Update the array item at index 4 to be the name of the person passed
    as a parameter
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableArray_Class/
 */
- (void)changeValueOfIndexFourInArray:(NSMutableArray *)arr
                        toPersonsName:(Person *)person {
    
    [arr replaceObjectAtIndex:4 withObject:[person name]];
    arr[4] = [person name];
}

// BONUS
/* 
    Given a string, return the string repeated x times
    Example: mike, 5 => mikemikemikemikemike
    https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSMutableString_Class/
 */

- (NSString *)repeatString:(NSString *)str
             numberOfTimes:(NSInteger)x {
    
    NSMutableString *finalString = [[NSMutableString alloc] init];
    for (int i = 0 ;i < x; i++) {
        [finalString appendString:str];
    }
    
    return finalString;
    
//    return [@"" stringByPaddingToLength:x * str.length withString:str startingAtIndex:0];
}

// BONUS
/*
    Given an array of numbers, sum each number in the array UNTIL
    the sum is greater than 1050. The returned value of this method
    should never be greater than 1050.
    (ex: [500, 500, 500] returns 1000)
    (ex: [200, 500, 100, 400] returns 800)
 */
- (int)returnSumWhileSumIsLessThan1050:(int *)arr {
    int i = 0;
    int sum = 0;
    while (sum + arr[i] <= 1050) {
        sum = sum + arr[i];
        i++;
    }
    return sum;
}

@end
