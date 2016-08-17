//
//  ViewController.m
//  UIViewExtensionBlock
//
//  Created by xiezi on 16/8/17.
//  Copyright © 2016年 xiezi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TargetAction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];    
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    [view addActionWithblock:^{
        NSLog(@"view 被点击 ......\n");
    }];

   
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(180, 100, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    [label addActionWithblock:^{
        NSLog(@"label 被点击 ......\n");
    }];
    

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 250, 100, 100)];
    imageView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:imageView];
    [imageView addActionWithblock:^{
        NSLog(@"imageView 被点击 ......\n");
    }];
    
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(180, 250, 100, 100)];
    imageView2.backgroundColor = [UIColor brownColor];
    [self.view addSubview:imageView2];
    [imageView2 addTarget:self action:@selector(imageDidSelcte:)];
}

- (void)imageDidSelcte:(id)sender
{
    NSLog(@" targetAction label 被点击 ......\n");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
