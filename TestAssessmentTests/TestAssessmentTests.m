//
//  TestAssessmentTests.m
//  TestAssessmentTests
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//Updated by Franklin on 7/11/15

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TestViewController.h"
#import <objc/message.h>
#import "Person.h"
#import "Chair.h"

#define RT_INT @"i"
#define RT_NSINT @"q"
#define RT_FLOAT @"f"
#define RT_BOOL @"B"
#define RT_CGFLOAT @"d"
#define RT_CHAR @"c"

@interface TestAssessmentTests : XCTestCase

@property (nonatomic) TestViewController *tvc;

@end


@implementation TestAssessmentTests

- (void)setUp {
    [super setUp];
    self.tvc = [[TestViewController alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

//Changed from Positive to Negative
- (void)testShouldReturnANegativeInt {
    Method method = [self aMethodForSelector:@selector(shouldReturnANegativeNSInteger)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnANegativeNSInteger] < 0;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//Changed from Negative to Positive
- (void)testShouldReturnAPositiveFloat {
    Method method = [self aMethodForSelector:@selector(shouldReturnAPositiveCGFloat)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_FLOAT] || [rt isEqualToString:RT_CGFLOAT];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnAPositiveCGFloat] > 0;
    NSLog(@"%f", [self.tvc shouldReturnAPositiveCGFloat]);
    NSLog(@"%d, %d", isCorrectReturnType, isCorrectReturnValue);
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//Changed Negative to Positive
- (void)testShouldReturnAPositiveBool {
    Method method = [self aMethodForSelector:@selector(shouldReturnAPositiveBool)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_BOOL];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnAPositiveBool] == YES;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//
- (void)testShouldReturnACharAtoZ {
    Method method = [self aMethodForSelector:@selector(shouldReturnACharAtoZ)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_CHAR];
    char c = [self.tvc shouldReturnACharAtoZ];
    BOOL isCorrectReturnValue = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

- (void)test0to100ReturnsInt {
    Method method = [self aMethodForSelector:@selector(shouldReturnSumOf0To100)];
    NSString *rt = [self returnTypeForMethod:method];
    
    NSInteger val = [self.tvc shouldReturnSumOf0To100];
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = val == 4950 || val == 5050;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

- (void)testShouldReturnSumOfArrayValues {
    int arr1[] = {4, 3, 2, 6, 8, 5, 6, 34, 2};
    int arr2[] = {4, 64, 234, 4567, 23, 5, 32, 435, 45, 3};
    int arr3[] = {56, 34, 23, 45, 56, 8, 89, 56, 34, 1};
    NSInteger sum1= [self.tvc shouldReturnSumOfArrayValues:arr1 withSize:(sizeof(arr1)/sizeof(int))];
    NSInteger sum2= [self.tvc shouldReturnSumOfArrayValues:arr2 withSize:(sizeof(arr2)/sizeof(int))];
    NSInteger sum3= [self.tvc shouldReturnSumOfArrayValues:arr3 withSize:(sizeof(arr3)/sizeof(int))];
    XCTAssertEqual(sum1, 70);
    XCTAssertEqual(sum2, 5412);
    XCTAssertEqual(sum3, 402);
}

- (void)testReturnCharBeforeQ {
    char str1[] = "mciaehflkqjkadflkj";
    char str2[] = "poirjbml;kmadfqkjadj;";
    char str3[] = "gijorklmzqadoijzlxkcm";
    char c1= [self.tvc shouldReturnCharBeforeQ:str1];
    char c2= [self.tvc shouldReturnCharBeforeQ:str2];
    char c3= [self.tvc shouldReturnCharBeforeQ:str3];
    XCTAssertTrue(c1 == 'k');
    XCTAssertTrue(c2 == 'f');
    XCTAssertTrue(c3 == 'z');
}

- (void)testSumOfTwoIntegers {
    Method method = [self aMethodForSelector:@selector(sumOfAnInteger:andAnotherInteger:)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = [self.tvc sumOfAnInteger:12 andAnotherInteger:16] == 28;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

- (void)testIsOdd {
    XCTAssertEqual([self.tvc isOdd:7], YES);
    XCTAssertEqual([self.tvc isOdd:88], NO);
    XCTAssertEqual([self.tvc isOdd:89], YES);
    XCTAssertEqual([self.tvc isOdd:54], NO);
    XCTAssertEqual([self.tvc isOdd:1], YES);
    XCTAssertEqual([self.tvc isOdd:184936], NO);
}

- (void)testIsMultipleOf5 {
    XCTAssertEqual([self.tvc isMultipleOfFive:10], YES);
    XCTAssertEqual([self.tvc isMultipleOfFive:2015], YES);
    XCTAssertEqual([self.tvc isMultipleOfFive:215], YES);
    XCTAssertEqual([self.tvc isMultipleOfFive:1111], NO);
}

- (void)testIsOddAndEven {
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:5 andThisNumberIsEven:10]);
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:8321 andThisNumberIsEven:1238]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:92]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:92]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:93]);
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:1 andThisNumberIsEven:2]);
}

- (void)testShouldReturnPersonsName {
    Person *person = [[Person alloc] init];
    [person setName:@"Carl"];
    XCTAssertEqual([self.tvc shouldReturnPersonsName:person], person.name);
}

- (void)testChangePersonsNameToAdaLovelace {
    Person *person = [[Person alloc] init];
    [person setName:@"Carl"];
    [self.tvc changePersonsNameToAdaLovelace:person];
    XCTAssert([[person name] isEqualToString:@"Ada Lovelace"]);
}

- (void)testCreateAndReturnPersonWithSomeProperties {
    Person *p = [self.tvc createAndReturnPersonWithSomeProperties];
    XCTAssert([[p name] isEqualToString:@"Santa Clause"]);
    XCTAssert([p age] == 1823);
}

- (void)testSitPersonInChair {
    Chair *chair = [[Chair alloc] init];
    [self.tvc makePersonSitInChair:chair];
    XCTAssertTrue([chair isOccupied]);
}

- (void)testPersonStandUp {
    Chair *chair = [[Chair alloc] init];
    Person *person = [[Person alloc] init];
    [person sitInChair:chair];
    [self.tvc makePersonStandUp:person];
    XCTAssertFalse([chair isOccupied]);
}

- (void)testCreateAndReturnNSArray {
    id t = [self.tvc createAndReturnNSArray];
    XCTAssertTrue([t isKindOfClass:[NSArray class]]);
    NSArray *arr = t;
    XCTAssertTrue(arr.count == 6);
    for (id item in arr) {
        XCTAssertTrue([item isKindOfClass:[NSString class]]);
    }
}

- (void)testChangeIdxToPersonsName {
    Person *p = [[Person alloc] init];
    [p setName:@"Pudge the Dog"];
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", @"", @"", nil];
    [self.tvc changeValueOfIndexFourInArray:arr toPersonsName:p];
    XCTAssert([[arr objectAtIndex:4] isEqualToString:[p name]]);
}

- (void)testRepeatStringXTimes {
    XCTAssert([[self.tvc repeatString:@"mike" numberOfTimes:10] isEqualToString:@"mikemikemikemikemikemikemikemikemikemike"]);
    XCTAssert([[self.tvc repeatString:@"bubblegum" numberOfTimes:4] isEqualToString:@"bubblegumbubblegumbubblegumbubblegum"]);
    XCTAssert([[self.tvc repeatString:@"a" numberOfTimes:100] isEqualToString:@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"]);
}

- (void)testReturnUpTo1050 {
    int arr1[] = {4, 1, 5, 42, 54, 3, 23, 542, 13, 12, 43, 5, 2, 1, 426, 735};
    XCTAssertTrue([self.tvc returnSumWhileSumIsLessThan1050:arr1] == 750);
}

// private helpers

- (NSString *)returnTypeForMethod:(Method)method {
    char * returnType = method_copyReturnType(method);
    NSString *str = [NSString stringWithCString:returnType encoding:NSUTF8StringEncoding];
    free(returnType);
    return str;
}

- (Method)aMethodForSelector:(SEL)selector {
    return class_getInstanceMethod([TestViewController class], selector);
}

@end
