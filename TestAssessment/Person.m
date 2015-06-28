//
//  Person.m
//  TestAssessment
//
//  Created by Michael Kavouras on 6/27/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Person.h"
#import "Chair.h"

@implementation Person {
    NSString *_name;
    NSInteger _age;
    Chair *_chair;
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (void)setChair:(Chair *)chair {
    _chair = chair;
}

- (Chair *)chair {
    return _chair;
}

- (void)setAge:(NSInteger)age {
    _age = age;
}

- (NSInteger)age {
    return _age;
}

// sets association between a person and a chair
- (void)sitInChair:(Chair *)chair {
    _chair = chair;
    [chair setPerson:self];
}

// removes association between a person and a chair
- (void)standUp {
    [[self chair] setPerson:nil];
    [self setChair:nil];
}


@end
