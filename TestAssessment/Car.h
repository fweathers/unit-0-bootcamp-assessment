//
//  Car.h
//  TestAssessment
//
//  Created by Michael Kavouras on 7/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

// tells the car to drive x number of miles
- (void)drive:(int)miles;

// returns the current fuel level
- (float)fuelLevel;

// setter/getter for the model name
- (void)setModel:(NSString *)model;
- (NSString *)model;

@end
