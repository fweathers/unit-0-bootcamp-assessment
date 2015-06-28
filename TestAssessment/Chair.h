//
//  Chair.h
//  TestAssessment
//
//  Created by Michael Kavouras on 6/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Chair : NSObject

- (void)setPerson:(Person *)person;

- (BOOL)isOccupied;

@end
