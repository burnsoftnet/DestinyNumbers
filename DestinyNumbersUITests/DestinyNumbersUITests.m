//
//  DestinyNumbersUITests.m
//  DestinyNumbersUITests
//
//  Created by burnsoft on 12/23/20.
//  Copyright © 2020 burnsoft. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface DestinyNumbersUITests : XCTestCase

@end

@implementation DestinyNumbersUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testRunApp {
    // UI tests must launch the application that they test.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}
#pragma mark
/*!
 @discussion Click on About section
 @brief  Start up app and View about section
 @remark Recorded UI Test
 */
- (void)testCheckAbout {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    
    [app.tabBars[@"Tab Bar"].buttons[@"About"] tap];

    //[app.staticTexts[@"You can also use the science of numbers to determine your destiny, or life goal, according to your given birth name: First, Middle and last "] swipeUp];
    
    //[app/*@START_MENU_TOKEN@*/.scrollViews.staticTexts[@"You can also use the science of numbers to determine your destiny, or life goal, according to your given birth name: First, Middle and last.  However, if you have rejected your birth name in favor of another name, both names should be considered as forces that shape you and your life. "]/*[[".scrollViews.staticTexts[@\"You can also use the science of numbers to determine your destiny, or life goal, according to your given birth name: First, Middle and last.  However, if you have rejected your birth name in favor of another name, both names should be considered as forces that shape you and your life. \"]",".staticTexts[@\"You can also use the science of numbers to determine your destiny, or life goal, according to your given birth name: First, Middle and last.  However, if you have rejected your birth name in favor of another name, both names should be considered as forces that shape you and your life. \"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/ exists];
}

/*!
 @discussion Test Main Section
 @brief  Start up app and Test the Main Section like a user would
 @remark Recorded UI Test
 */
-(void)testMainFunctionAll3Initials {
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    
    [app/*@START_MENU_TOKEN@*/.textFields[@"A"]/*[[".scrollViews.textFields[@\"A\"]",".textFields[@\"A\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *jKey = app/*@START_MENU_TOKEN@*/.keys[@"J"]/*[[".keyboards.keys[@\"J\"]",".keys[@\"J\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [jKey tap];
    [app/*@START_MENU_TOKEN@*/.textFields[@"B"]/*[[".scrollViews.textFields[@\"B\"]",".textFields[@\"B\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *sKey = app/*@START_MENU_TOKEN@*/.keys[@"S"]/*[[".keyboards.keys[@\"S\"]",".keys[@\"S\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [sKey tap];

    [app/*@START_MENU_TOKEN@*/.textFields[@"C"]/*[[".scrollViews.textFields[@\"C\"]",".textFields[@\"C\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *mKey = app/*@START_MENU_TOKEN@*/.keys[@"M"]/*[[".keyboards.keys[@\"M\"]",".keys[@\"M\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [mKey tap];
    [app swipeUp];
    
    XCUIElement *celticknot2JpgScrollView = /*@START_MENU_TOKEN@*/[app.scrollViews containingType:XCUIElementTypeImage identifier:@"celticknot2.jpg"].element/*[["app","[",".scrollViews containingType:XCUIElementTypeOther identifier:@\"Horizontal scroll bar, 1 page\"].element",".scrollViews containingType:XCUIElementTypeOther identifier:@\"Vertical scroll bar, 2 pages\"].element",".scrollViews containingType:XCUIElementTypeButton identifier:@\"  Get your Destiny Number  \"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"C\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your Last name:\"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"B\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your Middle name:\"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"A\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your First name:\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"Find your Destiny Number\"].element",".scrollViews containingType:XCUIElementTypeImage identifier:@\"celticknot2.jpg\"].element"],[[[-1,0,1]],[[1,12],[1,11],[1,10],[1,9],[1,8],[1,7],[1,6],[1,5],[1,4],[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/;
    [celticknot2JpgScrollView tap];
    /*@START_MENU_TOKEN@*/[celticknot2JpgScrollView pressForDuration:0.7];/*[["celticknot2JpgScrollView","["," tap];"," pressForDuration:0.7];"],[[[-1,0,1]],[[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/
    [app/*@START_MENU_TOKEN@*/.buttons[@"  Get your Destiny Number  "]/*[[".scrollViews.buttons[@\"  Get your Destiny Number  \"]",".buttons[@\"  Get your Destiny Number  \"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts[@"  Get your Destiny Number  "] tap];
    
    
    ///*@START_MENU_TOKEN@*/[app.textViews.textViews[@"A responsible person who has justice and honesty on your list of necessary life traits, your duties sometimes feel like heavy burdens. However, these traits also help you with creative talents, parenting, counseling, and negotiating problems. "] swipeRight];/*[["app.textViews.textViews[@\"A responsible person who has justice and honesty on your list of necessary life traits, your duties sometimes feel like heavy burdens. However, these traits also help you with creative talents, parenting, counseling, and negotiating problems. \"]","["," swipeDown];"," swipeRight];"],[[[-1,0,1]],[[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/
    
}

-(void)testMainFunction2Initials {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];
    
    [app/*@START_MENU_TOKEN@*/.textFields[@"A"]/*[[".scrollViews.textFields[@\"A\"]",".textFields[@\"A\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *jKey = app/*@START_MENU_TOKEN@*/.keys[@"J"]/*[[".keyboards.keys[@\"J\"]",".keys[@\"J\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [jKey tap];
    [app/*@START_MENU_TOKEN@*/.textFields[@"C"]/*[[".scrollViews.textFields[@\"C\"]",".textFields[@\"C\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *mKey = app/*@START_MENU_TOKEN@*/.keys[@"M"]/*[[".keyboards.keys[@\"M\"]",".keys[@\"M\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [mKey tap];
    
    XCUIElement *celticknot2JpgScrollView = /*@START_MENU_TOKEN@*/[app.scrollViews containingType:XCUIElementTypeImage identifier:@"celticknot2.jpg"].element/*[["app","[",".scrollViews containingType:XCUIElementTypeOther identifier:@\"Horizontal scroll bar, 1 page\"].element",".scrollViews containingType:XCUIElementTypeOther identifier:@\"Vertical scroll bar, 2 pages\"].element",".scrollViews containingType:XCUIElementTypeButton identifier:@\"  Get your Destiny Number  \"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"C\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your Last name:\"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"B\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your Middle name:\"].element",".scrollViews containingType:XCUIElementTypeTextField identifier:@\"A\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"First Letter of your First name:\"].element",".scrollViews containingType:XCUIElementTypeStaticText identifier:@\"Find your Destiny Number\"].element",".scrollViews containingType:XCUIElementTypeImage identifier:@\"celticknot2.jpg\"].element"],[[[-1,0,1]],[[1,12],[1,11],[1,10],[1,9],[1,8],[1,7],[1,6],[1,5],[1,4],[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/;
    [celticknot2JpgScrollView tap];
    /*@START_MENU_TOKEN@*/[celticknot2JpgScrollView pressForDuration:0.7];/*[["celticknot2JpgScrollView","["," tap];"," pressForDuration:0.7];"],[[[-1,0,1]],[[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/
    [app/*@START_MENU_TOKEN@*/.buttons[@"  Get your Destiny Number  "]/*[[".scrollViews.buttons[@\"  Get your Destiny Number  \"]",".buttons[@\"  Get your Destiny Number  \"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts[@"  Get your Destiny Number  "] tap];
    
    //[[[[[[[[[[[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeTextView].element childrenMatchingType:XCUIElementTypeTextView][@"You are a natural leader, independent and ambitious. Limitations frustrate you as you need freedom to make your own decisions"] swipeRight];

}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end