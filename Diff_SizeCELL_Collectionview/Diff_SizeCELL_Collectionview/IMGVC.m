//
//  IMGVC.m
//  Diff_SizeCELL_Collectionview
//
//  Created by cs on 07/09/17.
//  Copyright © 2017 cs. All rights reserved.
//

#import "IMGVC.h"

@interface IMGVC ()

@end

@implementation IMGVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView*image=[[UIImageView alloc]initWithFrame:self.view.bounds];
    image.image=_img;
    image.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:image];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
