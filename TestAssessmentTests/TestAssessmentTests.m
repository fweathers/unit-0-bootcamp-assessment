//
//  TestAssessmentTests.m
//  TestAssessmentTests
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TestViewController.h"
#import <objc/message.h>
#import "Person.h"

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

- (void)testShouldReturnAPositiveInt {
    Method method = [self aMethodForSelector:@selector(shouldReturnAPositiveInt)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnAPositiveInt] > 0;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

- (void)testShouldReturnANegativeFloat {
    Method method = [self aMethodForSelector:@selector(shouldReturnANegativeFloat)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_FLOAT] || [rt isEqualToString:RT_CGFLOAT];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnANegativeFloat] && [self.tvc shouldReturnANegativeFloat] < 0;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}

- (void)testShouldReturnANegativeBool {
    Method method = [self aMethodForSelector:@selector(shouldReturnANegativeBool)];
    NSString *rt = [self returnTypeForMethod:method];
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_BOOL];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnANegativeBool] == NO;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
}
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
    
    BOOL isCorrectReturnType = [rt isEqualToString:RT_INT] || [rt isEqualToString:RT_NSINT];
    BOOL isCorrectReturnValue = [self.tvc shouldReturnSumOf0To100] == 4950;
    XCTAssert(isCorrectReturnType && isCorrectReturnValue);
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
    XCTAssertEqual([self.tvc isOdd:88], NO);
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
