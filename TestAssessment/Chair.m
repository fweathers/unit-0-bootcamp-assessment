//
//  Chair.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/28/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Chair.h"
#import "Person.h"

@implementation Chair {
    Person *_person;
}

- (void)setPerson:(Person *)person {
    _person = person;
}

- (BOOL)isOccupied {
    return _person != nil;
}

@end
