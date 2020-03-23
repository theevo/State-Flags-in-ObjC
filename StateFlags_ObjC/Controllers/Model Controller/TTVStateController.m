//
//  TTVStateController.m
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import "TTVStateController.h"
#import "StateHelper.h"
#import "State.h"

@implementation TTVStateController

// MARK: - Shared Instance and Source of Truth

+ (TTVStateController *) shared
{
    static TTVStateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [TTVStateController new];
    });
    return shared;
}


// MARK: Initializer

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _states = [self addStates];
    }
    
    return self;
}


// MARK: - Helper Methods

- (NSArray *)addStates
{
    // create a placeholder for our states
    NSMutableArray *states = [[NSMutableArray alloc] init];
    
    
    // go through both arrays of NSString and initialize States
    for (NSString *name in StateHelper.states) {
        NSInteger index = [StateHelper.states indexOfObject:name];
        
        NSString *abbreviation = [StateHelper.abbreviations objectAtIndex:index];
        
        State *state = [[State alloc] initWithName:name abbreviation:abbreviation];
        
        [states addObject:state];
        
    }
    
    return states;
}

@end
