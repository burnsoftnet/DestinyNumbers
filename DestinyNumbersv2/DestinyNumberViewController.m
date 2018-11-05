//
//  DestinyNumberViewController.m
//  DestinyNumbersv2
//
//  Created by burnsoft on 2/18/14.
//  Copyright (c) 2014 burnsoft. All rights reserved.
//

#import "DestinyNumberViewController.h"
#import "DestinyNumbers.h"

@interface DestinyNumberViewController ()

@end

@implementation DestinyNumberViewController
@synthesize FirstNameT;
@synthesize MiddleNameT;
@synthesize LastNameT;
@synthesize Meaning;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)GetMeaning:(id)sender {
    int fn = 0;
    int mn = 0;
    int ln = 0;
    int iTotal = 0;
    [self.view endEditing:YES];
    DestinyNumbers *dn = [DestinyNumbers new];
    
    fn = [dn GetNumber:FirstNameT.text];
    mn = [dn GetNumber:MiddleNameT.text];
    ln = [dn GetNumber:LastNameT.text];
    
    iTotal = fn + mn + ln;
    NSString *MyNumber;
    MyNumber= [[NSString alloc] initWithFormat:@"Your Number is: %d",iTotal];
    NSString *MyMeaning= [NSString new];
    MyMeaning = [dn GetDMeaning:iTotal];
    ((DestinyNumberNavViewController *)self.parentViewController).pushMeaning = MyMeaning;
    ((DestinyNumberNavViewController *)self.parentViewController).yourNumber = MyNumber;
    //Meaning.text = MyMeaning;
}

- (IBAction)clearResults:(id)sender {
    FirstNameT.text = @"";
    MiddleNameT.text= @"";
    LastNameT.text=@"";
    ((DestinyNumberNavViewController *)self.parentViewController).pushMeaning = @"";
    /*FirstNameT = nil;
    MiddleNameT = nil;
    LastNameT = nil;
    Meaning = nil;
     */
}
-(IBAction) ClearFirstName:(id) sender
{
    FirstNameT.text = @"";
}

-(IBAction)backgroundTouched:(id)sender
{
    [self.LastNameT resignFirstResponder];
    [self.FirstNameT resignFirstResponder];
    [self.MiddleNameT resignFirstResponder];
}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *pushText;
    NSString *pushNumber;
    //pushText=[[NSString alloc]initWithFormat:@"@\n",((DestinyNumberNavViewController *)self.parentViewController).pushMeaning];
    pushText=((DestinyNumberNavViewController *)self.parentViewController).pushMeaning;
    self.Meaning.text = pushText;
    pushNumber=((DestinyNumberNavViewController *)self.parentViewController).yourNumber;
    self.yNumber.text = pushNumber;
    
    
    
}
@end
