//
//  State.m
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import "State.h"

@implementation State

- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _abbreviation = [abbreviation copy];
    }
    return self;
}

@end
