//
//  DestinyNumberViewController.h
//  DestinyNumbersv2
//
//  Created by burnsoft on 2/18/14.
//  Copyright (c) 2014 burnsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DestinyNumberNavViewController.h"

@interface DestinyNumberViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *FirstNameT;
@property (weak, nonatomic) IBOutlet UITextField *MiddleNameT;
@property (weak, nonatomic) IBOutlet UITextField *LastNameT;
@property (weak, nonatomic) IBOutlet UILabel *Meaning;
@property (weak, nonatomic) IBOutlet UILabel *yNumber;
-(IBAction)textFieldReturn:(id)sender;
-(IBAction)backgroundTouched:(id)sender;
-(IBAction) ClearFirstName:(id) sender;
- (IBAction)GetMeaning:(id)sender;
- (IBAction)clearResults:(id)sender;


@end
