//
//  TTVStateCollectionViewController.m
//  StateFlags_ObjC
//
//  Created by theevo on 3/23/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import "TTVStateCollectionViewController.h"
#import "TTVStateController.h"
#import "State.h"
#import "TTVStateCollectionViewCell.h"

@interface TTVStateCollectionViewController ()

@end

@implementation TTVStateCollectionViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}



// MARK: - <UICollectionViewDataSource>




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return TTVStateController.shared.states.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TTVStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"stateCell" forIndexPath:indexPath];
    
    State *state = [TTVStateController.shared.states objectAtIndex:indexPath.row];
    
    cell.state = state;
    
    return cell;
}

@end
