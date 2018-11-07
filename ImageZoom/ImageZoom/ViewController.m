//
//  ViewController.m
//  ImageZoom
//
//  Created by Mehboob on 11/7/18.
//  Copyright © 2018 360Nautica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.myImageView setImage:[UIImage imageNamed:@"campservices.jpg"]];
    [self.myScrollView setMaximumZoomScale:10.0f];
    
    [self.myScrollView setClipsToBounds:YES];
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.myImageView;
}
@end
