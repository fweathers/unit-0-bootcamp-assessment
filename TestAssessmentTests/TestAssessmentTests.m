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
#import "Car.h"

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

//Changed A to Z to 0 to 9
- (void)testShouldReturnACharCtoL {
    Method method = [self aMethodForSelector:@selector(shouldReturnACharCtoL)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_CHAR];
    char c = [self.tvc shouldReturnACharCtoL];
    BOOL isCorrectReturnValue = (c >= 'c' && c <= 'l') || (c >= 'C' && c <= 'L');
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//Changed 100 to 1000
- (void)test0to1000ReturnsInt {
    Method method = [self aMethodForSelector:@selector(shouldReturnSumOf0To1000)];
    NSString *rt = [self returnTypeForMethod:method];
    
    NSInteger val = [self.tvc shouldReturnSumOf0To1000];
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = val == 499500 || val == 500500;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//Changed Sum to Average
- (void)testShouldReturnAverageOfArrayValues {
    int arr1[] = {40, 30, 20, 60, 80, 50, 60, 340, 10, 30};
    int arr2[] = {4, 64, 234, 4567, 23, 5, 32, 435, 45, 11};
    int arr3[] = {56, 34, 23, 45, 56, 8, 89, 56, 34, 9};
    NSInteger avg1= [self.tvc shouldReturnAverageOfArrayValues :arr1 withSize:(sizeof(arr1)/sizeof(int))];
    NSInteger avg2= [self.tvc shouldReturnAverageOfArrayValues :arr2 withSize:(sizeof(arr2)/sizeof(int))];
    NSInteger avg3= [self.tvc shouldReturnAverageOfArrayValues :arr3 withSize:(sizeof(arr3)/sizeof(int))];
    XCTAssertEqual(avg1, 72);
    XCTAssertEqual(avg2, 542);
    XCTAssertEqual(avg3, 41);
}

//Changed Before to After
- (void)testReturnAfterQ {
    char str1[] = "mciaehflkgjkadflkj";
    char str2[] = "poirjbml;kmadfgkjadj;";
    char str3[] = "wijorklmzgadoijzlxkcm";
    char c1= [self.tvc shouldReturnCharAfterG:str1];
    char c2= [self.tvc shouldReturnCharAfterG:str2];
    char c3= [self.tvc shouldReturnCharAfterG:str3];
    XCTAssertTrue(c1 == 'j');
    XCTAssertTrue(c2 == 'k');
    XCTAssertTrue(c3 == 'a');
}

//Changed Sum to Product
- (void)testProductOfTwoIntegers {
    Method method = [self aMethodForSelector:@selector(productOfAnInteger:andAnotherInteger:)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = [self.tvc productOfAnInteger:12 andAnotherInteger:10] == 120;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

//Changed Odd to Even
- (void)testIsEven {
    XCTAssertEqual([self.tvc isEven:7], NO);
    XCTAssertEqual([self.tvc isEven:88], YES);
}

//Changed 5 to 10
- (void)testIsMultipleOf10 {
    XCTAssertEqual([self.tvc isMultipleOfTen:10], YES);
    XCTAssertEqual([self.tvc isMultipleOfTen:2015], NO);
}

- (void)testIsOddAndEven {
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:5 andThisNumberIsEven:10]);
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:8321 andThisNumberIsEven:1238]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:92]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:92]);
    XCTAssertFalse([self.tvc returnYesIfThisNumberIsOdd:4444 andThisNumberIsEven:93]);
    XCTAssertTrue([self.tvc returnYesIfThisNumberIsOdd:1 andThisNumberIsEven:2]);
}

- (void)testShouldReturnCarModel {
    Car *car = [Car new];
    [car setModel:@"Honda Pilot"];
    XCTAssert([[self.tvc shouldReturnCarModel:car] isEqualToString:@"Honda Pilot"]);
}

- (void)testShouldChangeCarModel {
    Car *car = [Car new];
    [car setModel:@"Honda Pilot"];
    [self.tvc changeCarModelToFirebird:car];
    XCTAssert([[car model] isEqualToString:@"Firebird"]);
}


- (void)testDriveCarAndReturnFuel {
    Car *car = [Car new];
    [self.tvc tellCarToDrive4MilesAndReturnFuelLevel:car];
    XCTAssertTrue([car fuelLevel] == 60.0);
}

- (void)testReturnSumOver100 {
    int arr1[] = {132, 155, 2, 3, 13, 5, 57, 687, 2};
    int count = sizeof(arr1) / sizeof(int);
    XCTAssertTrue([self.tvc returnSumOfAllItemsGreaterThan100:arr1 withSize:count] == 974);
}

- (void)testCreateAndReturnNewCar {
    Car *c = [self.tvc createAndReturnANewCar];
    XCTAssertTrue([c fuelLevel] == 40.0);
    XCTAssert([[c model] isEqualToString:@"Honda Pilot"]);
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
