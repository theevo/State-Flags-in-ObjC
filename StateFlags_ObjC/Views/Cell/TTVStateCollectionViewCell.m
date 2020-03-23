//
//  TTVStateCollectionViewCell.m
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import "TTVStateCollectionViewCell.h"
#import "State.h"

@implementation TTVStateCollectionViewCell

- (void) setState:(State *)state
{
    _state = state;
    [self updateWithStates: state];
}

- (void) updateWithStates:(State *)state
{
    if (state) {
        self.flagImage.image = [UIImage imageNamed: state.abbreviation];
        self.stateName.text = state.name;
    }
}

@end
