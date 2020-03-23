//
//  TTVStateCollectionViewCell.h
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface TTVStateCollectionViewCell : UICollectionViewCell

// MARK: - Outlets and Properties

@property (weak, nonatomic) IBOutlet UILabel *stateName;
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;

@property (nonatomic, strong, nonnull) State *state;




@end

NS_ASSUME_NONNULL_END
