//
//  MyCollectionCell.m
//  Arabica
//
//  Created by Oleg Anghelov on 10/7/15.
//  Copyright © 2015 YOPESO. All rights reserved.
//

#import "MyCollectionCell.h"

@interface MyCollectionCell ()

@property (weak, nonatomic) IBOutlet UILabel *myTitle;

@end

@implementation MyCollectionCell

- (void)awakeFromNib {
    
}

- (void)updateWithTitle:(NSString *)title {
    self.myTitle.text = title;    
}

@end
