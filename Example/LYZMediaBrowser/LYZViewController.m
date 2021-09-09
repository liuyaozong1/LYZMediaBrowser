//
//  LYZViewController.m
//  LYZMediaBrowser
//
//  Created by 648731281@qq.com on 09/09/2021.
//  Copyright (c) 2021 648731281@qq.com. All rights reserved.
//

#import "LYZViewController.h"
#import <YBImageBrowser.h>
@interface LYZViewController ()

@end

@implementation LYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
  
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    YBIBImageData * data = [[YBIBImageData alloc] init];
    data.imageName = @"PR-Pic-V1";
    
    YBImageBrowser *temp = [YBImageBrowser new];
    temp.dataSourceArray = @[data];
    [temp show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
