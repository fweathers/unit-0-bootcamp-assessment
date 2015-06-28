//
//  Person.h
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Chair;

@interface Person : NSObject

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setAge:(NSInteger)age;
- (NSInteger)age;

// sets up association between a person and a chair
- (void)sitInChair:(Chair *)chair;

// removes association between a person and a chair
- (void)standUp;

@end
