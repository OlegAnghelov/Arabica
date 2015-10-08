//
//  ViewController.m
//  Arabica
//
//  Created by Oleg Anghelov on 10/7/15.
//  Copyright © 2015 YOPESO. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (copy, nonatomic) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[@"first", @"second", @"third"];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}


#pragma mark - CollectionView DataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.dataSource.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionCell" forIndexPath:indexPath];
    [cell updateWithTitle:self.dataSource[indexPath.row]];

    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{

    return CGSizeMake(300, 200);
}


@end
