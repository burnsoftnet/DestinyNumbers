//
//  AboutViewController.m
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

#pragma mark View Did Load
//When the View first Appears
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setBackGroundImage];
}

#pragma mark View Will Appear
//when the view reappears
-(void) viewWillAppear:(BOOL)animated
{
    [self setBackGroundImage];
}

#pragma mark View Did Layout Subviews
//when the screen is reorientated to another angle
-(void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self setBackGroundImage];
}

#pragma mark Memory Warning
//actions to take when a memory warning is issued
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Set Background Image
//set the background image of the view
-(void) setBackGroundImage
{
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"background.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}

@end
