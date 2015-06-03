//
//  ViewController.m
//  JTImagePageView
//
//  Created by CC on 15/6/3.
//  Copyright (c) 2015年 John Tsai. All rights reserved.
//

#import "ViewController.h"
#import "JTImagePageView.h"

@interface ViewController ()
<JTImagePageViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ;
    JTImagePageView *imagePageView = [[JTImagePageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 200)];
    
    @autoreleasepool {
        
        UIImage *image1 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat0" ofType:@"jpg"]];
        UIImage *image2 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat1" ofType:@"jpg"]];
        UIImage *image3 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat2" ofType:@"jpg"]];
        UIImage *image4 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat4" ofType:@"jpg"]];
        UIImage *image5 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat5" ofType:@"jpg"]];
        UIImage *image6 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat6" ofType:@"jpg"]];
        UIImage *image7 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cat7" ofType:@"jpg"]];
        UIImage *image8 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"dog0" ofType:@"jpg"]];
        UIImage *image9 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"dog1" ofType:@"jpg"]];
        
        NSArray *images = [NSArray arrayWithObjects:image1,image2,image3,image4,image5,image6,image7,image8,image9, nil];
        imagePageView.images = images;
        imagePageView.delegate = self;
    }
    [self.view addSubview:imagePageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imagePageView:(JTImagePageView *)view didSelectIndex:(NSUInteger)index {
    NSLog(@"index is %lu",index);
}

@end
