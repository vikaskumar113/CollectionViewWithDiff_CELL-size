//
//  UICollectionViewWaterfallCell.m
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import "CHTCollectionViewWaterfallCell.h"

@implementation CHTCollectionViewWaterfallCell

#pragma mark - Accessors
- (UIImageView *)imageView {
  if (!_imageView) {
    _imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
    _imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    [_imageView.layer setMasksToBounds:YES];
      _imageView.layer.cornerRadius = 18.0;
      _imageView.layer.borderColor = [[UIColor blueColor] CGColor];
      _imageView.layer.borderWidth = 1.0;
      _imageView.layer.masksToBounds = YES;
  }
  return _imageView;
}

- (id)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self.contentView addSubview:self.imageView];
  }
  return self;
}

@end
