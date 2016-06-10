//
//  DestinyNumbers.m
//  DestinyNumber
//
//  Created by Joe Mireles on 7/19/12.
//  Copyright (c) 2012 burnsoft. All rights reserved.
//

#import "DestinyNumbers.h"

@implementation DestinyNumbers
@synthesize FirstName;
@synthesize MiddleName;
@synthesize LastName;

- (int) GetNumber:(NSString *)c
{
    int iAns = 0;
    NSString *c2;
    c2 = [c capitalizedString];
    if ([c2 isEqualToString:@"A"] || [c2 isEqualToString:@"J"] || [c2 isEqualToString:@"S"]) {
        iAns = 1;
    }	
    else if ([c2 isEqualToString:@"B"] || [c2 isEqualToString:@"K"] || [c2 isEqualToString:@"T"]) {
        iAns = 2;
    }
    else if ([c2 isEqualToString:@"C"] || [c2 isEqualToString:@"L"] || [c2 isEqualToString:@"U"]) {
        iAns = 3;
    }
    else if ([c2 isEqualToString:@"D"] || [c2 isEqualToString:@"M"] || [c2 isEqualToString:@"V"]) {
        iAns = 4;
    }
    else if ([c2 isEqualToString:@"E"] || [c2 isEqualToString:@"N"] || [c2 isEqualToString:@"W"]) {
        iAns = 5;
    }
    else if ([c2 isEqualToString:@"F"] || [c2 isEqualToString:@"O"] || [c2 isEqualToString:@"X"]) {
        iAns = 6;
    }
    else if ([c2 isEqualToString:@"G"] || [c2 isEqualToString:@"Y"] || [c2 isEqualToString:@"P"]) {
        iAns = 7;
    }    
    else if ([c2 isEqualToString:@"H"] || [c2 isEqualToString:@"Q"] || [c2 isEqualToString:@"Z"]) {
        iAns = 8;
    }
    else if ([c2 isEqualToString:@"I"] || [c2 isEqualToString:@"R"]) {
        iAns = 9;
    }
    
    
    return iAns;
}

- (NSString *) GetDinsultingMeaning:(int)i
{
    NSString *sMsg = @"";
    switch (i) {
        case 1:
            sMsg = @"You are nothing more then a follower, dependent on others and lack ambitions.  You like limitations cause you are use to a life of bondage andhaving other make the decision for you.  Take a seat and wait for you next set of orders SLACKER!";
            break;
        case 2:
            sMsg = @"You are a sensitive little bugger and reading any further just might make you cry. You lack intuition and refinement.  You have a natural nack for avoiding problems by running the other way and you do not play well with others";
            break;
        case 3:
            sMsg = @"";
            break;
        case 4:
            sMsg = @"";
            break;
        case 5:
            sMsg = @"";
            break;
        case 6:
            sMsg = @"";
            break;
        case 7:
            sMsg = @"";
            break;
        case 8:
            sMsg = @"";
            break;
        case 9:
            sMsg = @"Some people might call you a left wing extremist. Where all the liberal bleed hearts think that your panties are in a massive bunch.  Your friends and acuaintances are more then likely communists like yourself, if not you just use the to spy on the other side";
            break;
        case 10:
            sMsg = @"";
            break;
        case 11:
            sMsg = @"";
            break;
        case 12:
            sMsg = @"";
            break;
        case 13:
            sMsg = @"";
            break;
        case 14:
            sMsg = @"";
            break;
        case 15:
            sMsg = @"";
            break;
        case 16:
            sMsg = @"";
            break;
        case 17:
            sMsg = @"";
            break;
        case 18:
            sMsg = @"";
            break;
        case 19:
            sMsg = @"";
            break;
        case 20:
            sMsg = @"";
            break;
        case 21:
            sMsg = @"";
            break;
        case 22:
            sMsg = @"";
            break;
        case 23:
            sMsg = @"";
            break;
        case 24:
            sMsg = @"";
            break;
        case 25:
            sMsg = @"";
            break;
        case 26:
            sMsg = @"";
            break;
        case 27:
            sMsg = @"";
            break;
        case 28:
            sMsg = @"";
            break;
        case 29:
            sMsg = @"";
            break;
        case 30:
            sMsg = @"";
            break;
        default:
            sMsg = [NSString stringWithFormat:@"I'm not going to waste my time for someone with a number of %i at this time.",i];;
            break;
    }
    return sMsg;
}

- (NSString *) GetDMeaning:(int)i
{
    NSString *sMsg = @"";
    switch (i) {
        case 1:
            sMsg = @"You are a natural leader, independent and ambitious. Limitations frustrate you as you need freedom to make your own decicions. ";
            break;
        case 2:
            sMsg = @"With tact, refinement, and strong intuition, you are good at avoiding problems and working well with others.  You need a partnership for your abilities to surface. Sensitivity, however, can make you vulnerable.";
            break;
        case 3:
            sMsg = @"A charming, expressive person with lots of creative talent, you could excel in writing, the theater, art, or music. Discipline and order, however, may be lacking.";
            break;
        case 4:
            sMsg = @"You are a grounded person who always approaches life in a methodical manner. You never make spur of the moment decisions and always see a project through the end.";
            break;
        case 5:
            sMsg = @"You must have freedom, change, adventure, and excitement in your life. Being an adaptable person, you work well under these conditions.";
            break;
        case 6:
            sMsg = @"A responsible person who has justice and honesty on your list of necessary life traits, your duties sometimes feel like heavy burdens. However, these traits also help you with creative talents, parenting, counseling, and negotiating problems. ";
            break;
        case 7:
            sMsg = @"This number expresses great curiosity for the truth in all things, clarity of though, and persistence of purpose. It also causes you stress if you engage in too much social activity.";
            break;
        case 8:
            sMsg = @"A highly competitive person, you enjoy challenges in your struggle to be the best of your field or oversome obstacles. You natural talents could fit you for several careers in management or negotiating.";
            break;
        case 9:
            sMsg = @"a born humanitarian, you are extremely idealistic, sometimes to point to being naive. Your friends and acquaintances come from all walks of life.";
            break;
        case 10:
            sMsg = @"You might fail to realize your own potential and consequently harbour deep-seated feeling of frustration, which will cause you to feel unfulfilled.  This makes you behave somewhat proud and arrogant manner to cover your feelings of inferiority.  You might have a good business skill, hate routine and can be quite eccentric.";
            break;
        case 11:
            sMsg = @"Your ideas, intuition, and psychic abilities can make you a powerful presence if you learn to control the energy. Because of a sense of seperateness that developed in childhood, you may be cautious about sharing your ideas.";
            break;
        case 12:
            sMsg = @"You are a developed soul who have accumulated an unsual inner strength through many and varied lifetimes, But since you are still here you might want to change some of your old habbits.  You are suspicious of those who offer a high position and carefully analyse it, and to be awaare of false flattery and those who use it to gain their own ends.";
            break;
        case 13:
            sMsg = @"Known as a karmic numbner asscoiated with upheaval.  Smart, but very vulnerable, touchy and quick to be offended. But you are loyal and make a good friend.  Even though you are quick to offend, remember that your words can do irreparable damage to the other person.";
            break;
        case 14:
            sMsg = @"Known as a karmic number, you need to learn independence, self initiative, unity and justice.  Be careful, you can have a strong negative influence on people. You become bored quickly and need to be challenged.";
            break;
        case 15:
            sMsg = @"You have a lot of spunk, but do not like to attract attention to yourself.  You are independent and can be rebellious at time. You might come off as tough, but in reality you can be very sensitive and loving on the inside.";
            break;
        case 16:
            sMsg = @"You must cultivate your personal willpower, independence and initicative action to enable yourself to overcome obstacles that come into your life.  You listen to you inner voice and analyize dreams.";
            break;
        case 17:
            sMsg=@"Congrats! you have a name that live on long after you die.  You are strong and soft, sympathetic and sentimental.  They say that people with the number 17 have extremely high psychic and clairvoyant abilities...what am i thinking now?";
            break;
        case 18:
            sMsg = @"You attact people with a lot of problems and they just want to tell you their story.  You have a strong and loving soul. You would make a great teacher or vet or humanitarian work.";
            break;
        case 19:
            sMsg=@"You are a domineering character, with a very strong, magnetic personality.  With your assertiveness, you are able to inspire full confidence in others, but you can also break a person.  In relationships, you look for people that are the same, or those that completely obey.";
            break;
        case 20:
            sMsg=@"You are a caring and loving person, however you are sensitive and are prone to have trouble with your self-esteem.  You like to have many friends around you and are easily upset when your friends are fighting.";
            break;
        case 21:
            sMsg=@"You are cheeky, bubbly, popular and oozing with charisma. You are also easy going and have the ability to get along with everyone.  You have the ability to feel their way through any situation, attempting to understand both sides before they make a decision";
            break;
        case 22:
            sMsg = @"This number is often referred to as the Master Builder. You are capable of making your mark on history in either a positive or a negative way, depending upon how you interact with others, the ethics you embrace, and the goals you set. ";
            break;
        case 23:
            sMsg=@"You like to experience everything in life.  This is a good and bad thing.  Despite the fact that you are open to new things, you can also fall into over indulging into drugs, alcohol, too much food, sex, gambling, etc.";
            break;
        case 24:
            sMsg=@"You are very popular, disciplined and loves family life. You are responsible, faithful and sympathetic, although you have a tendency to interfere too much in others' lives.";
            break;
        case 25:
            sMsg=@"You are is sometimes known to be very aloof and critical of others, so it is hard to form close bonds with one.  However, you possess a wonderful mind and are excellent in research.";
            break;
        case 26:
            sMsg=@"You have great leadership potential and may/ or have achieved great success or even fame.  You would make a great politician, property mogual, or business leader";
            break;
        case 27:
            sMsg=@"You are often broad-minded and have a good sense of humour, although your calm exterior often covers up feelings of stress. you can hold a grudge and are tight with your cash, and are able to attract money from unusual sources.";
            break;
        case 28:
            sMsg=@"You will excel anywhere you can show your leadership qualities.  You tend to be stubborn and indepenent.";
            break;
        case 29:
            sMsg=@"You have a deep love of family and home-life and enjoy sports of all kinds.  You are able to multi-task, doing ten things at once.";
            break;
        case 30:
            sMsg=@"You are a talker and extremely creative, and it is this creativity that you need to put to good use during your lifetimes. ";
            break;
        default:
            sMsg = [NSString stringWithFormat:@"Sorry, we currently do not have anything listed for %i at this time.",i];
            break;
    }
    return sMsg;
}

- (int) CalcLeters
{
    int fn = 0;
    int mn = 0;
    int ln = 0;
    int iTotal = 0;
    
    DestinyNumbers *dn = [DestinyNumbers new];
    fn = [dn GetNumber:FirstName];
    mn = [dn GetNumber:MiddleName];
    ln = [dn GetNumber:LastName];
    
    iTotal = fn + mn + ln;
    
    return iTotal;
    
}

@end
