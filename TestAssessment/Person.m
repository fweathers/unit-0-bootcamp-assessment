//
//  Person.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Person.h"

@implementation Person {
    NSString *_name;
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

@end
