//
//  State.h
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *abbreviation;

- (instancetype)initWithName:(NSString *) name
               abbreviation:(NSString *) abbreviation;

@end

NS_ASSUME_NONNULL_END
