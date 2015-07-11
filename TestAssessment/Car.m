//
//  Car.m
//  TestAssessment
//
//  Created by Michael Kavouras on 7/11/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Car.h"

@implementation Car {
    float _fuelLevel;
    NSString *_model;
}

- (void)setFuelLevel:(float)level {
    _fuelLevel = level;
}

- (float)fuelLevel {
    return _fuelLevel;
}

- (instancetype)init {
    if (self = [super init]) {
        _fuelLevel = 100.0;
        return self;
    }
    return nil;
}

- (NSString *)model {
    return _model;
}

- (void)setModel:(NSString *)model {
    _model = model;
}


- (void)drive:(int)miles {
    [self setFuelLevel:[self fuelLevel] - (10 * miles)];
}

@end
