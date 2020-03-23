//
//  TTVStateController.h
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface TTVStateController : NSObject


// MARK: - Singleton and Source of Truth

+ (TTVStateController *) shared;
@property (nonatomic, strong) NSArray *states;


// MARK: - Helper Method

- (NSArray *) addStates;

@end

NS_ASSUME_NONNULL_END
