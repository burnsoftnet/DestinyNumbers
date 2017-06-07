//
//  DestinyNumberViewController.h
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DestinyNumbers.h"
#import "DestinyResultsViewController.h"

@interface DestinyNumberViewController : UIViewController <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtMiddleName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;

- (IBAction)GetMeaning:(id)sender;


@end
