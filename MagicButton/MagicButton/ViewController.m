//
//  ViewController.m
//  MagicButton
//
//  Created by Manon on 2017/11/5.
//  Copyright © 2017年 Manon. All rights reserved.
//

#import "ViewController.h"
#import "MagicButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MagicButton *button = [[MagicButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    button.backgroundColor = [UIColor orangeColor];
    button.center = self.view.center;
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
