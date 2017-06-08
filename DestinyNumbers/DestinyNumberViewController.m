//
//  DestinyNumberViewController.m
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import "DestinyNumberViewController.h"

@interface DestinyNumberViewController ()

@end

@implementation DestinyNumberViewController 
{
    NSString *MyNumber;
    NSString *MyMeaning;
}

#pragma mark View Did Load
//When the View first Appears
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapReceived:)];
    [tapGestureRecognizer setDelegate:self];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    
    MyNumber = [NSString new];
    MyMeaning = [NSString new];
    
     [self setBackGroundImage];
}
#pragma mark View Did Appear
//actions to take when the view appears again
-(void)viewDidAppear:(BOOL)animated
{
    MyNumber = [NSString new];
    MyMeaning = [NSString new];
    self.txtFirstName.text = @"";
    self.txtMiddleName.text = @"";
    self.txtLastName.text = @"";
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
//actions to take when a memory warning is issue
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Tap Recieved
//dissmiss the keyboard when the view is touched.
-(void)tapReceived:(UITapGestureRecognizer *)tapGestureRecognizer
{
    [self.txtLastName resignFirstResponder];
    [self.txtMiddleName resignFirstResponder];
    [self.txtFirstName resignFirstResponder];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueResults"]) {
        DestinyResultsViewController *myResults = (DestinyResultsViewController *)segue.destinationViewController;
        myResults.pushMeaning = MyMeaning;
        myResults.yourNumber = MyNumber;
    }
    
}

#pragma mark Get Meaning Button
//action to take when button is touched
- (IBAction)GetMeaning:(id)sender {
    int fn = 0;
    int mn = 0;
    int ln = 0;
    int iTotal = 0;
    [self.view endEditing:YES];
    DestinyNumbers *dn = [DestinyNumbers new];
    
    fn = [dn GetNumber:self.txtFirstName.text];
    mn = [dn GetNumber:self.txtMiddleName.text];
    ln = [dn GetNumber:self.txtLastName.text];
    
    iTotal = fn + mn + ln;
    
    MyNumber= [[NSString alloc] initWithFormat:@"Your Destiny Number is: %d",iTotal];
    MyMeaning = [dn GetDMeaning:iTotal];
    
    [self performSegueWithIdentifier:@"segueResults" sender:self];
    
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
