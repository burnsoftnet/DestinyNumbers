//
//  DestinyNumbers.h
//  DestinyNumber
//
//  Created by Joe Mireles on 7/19/12.
//  Copyright (c) 2012 burnsoft. All rights reserved.
//
/*
 
 
 The Celts considered numbers very important, even in some instances,  There is evidence that the Druids used numbers to represent certain ideas.  
 
 You can also use the science of numbers to determin your destiny, or life goal, according to your given birth name: First, Middle and last.  However, if you have rejected your birth name in favor of another name, both names should be considered as forces that shape you and your life.  This also applies if you take a magic name to be used only in ritual work. 
 The Destiny number is determined by assigning a numerical value to each letter, adding the numbers together, then reducing them to a single number.  Numbers eleven and twenty-two, however, are not reduced, as they have special significance of their own.
 
 
 */
#import <Foundation/Foundation.h>

@interface DestinyNumbers : NSObject
{
    NSString *FirstName;
    NSString *MiddleName;
    NSString *LastName;
}

@property NSString *FirstName;
@property NSString *MiddleName;
@property NSString *LastName;

- (int) GetNumber:(NSString *)c;
- (NSString *) GetDMeaning:(int)i;
- (NSString *) GetDinsultingMeaning:(int) i;
- (int) CalcLeters;

@end