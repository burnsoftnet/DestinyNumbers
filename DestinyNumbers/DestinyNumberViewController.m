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
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapReceived:)];
    [tapGestureRecognizer setDelegate:self];
    [self.view addGestureRecognizer:tapGestureRecognizer];
    
    MyNumber = [NSString new];
    MyMeaning = [NSString new];
}

-(void)viewDidAppear:(BOOL)animated
{
    MyNumber = [NSString new];
    MyMeaning = [NSString new];
    self.txtFirstName.text = @"";
    self.txtMiddleName.text = @"";
    self.txtLastName.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
@end
