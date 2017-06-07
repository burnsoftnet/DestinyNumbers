//
//  DestinyResultsViewController.h
//  DestinyNumbers
//
//  Created by burnsoft on 6/7/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DestinyResultsViewController : UIViewController <UIActionSheetDelegate>

@property (nonatomic, strong) NSString *pushMeaning;
@property (nonatomic, strong) NSString *yourNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UITextView *txtMeaning;


@end
