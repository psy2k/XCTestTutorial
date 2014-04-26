//
//  XCTestTutorialTests.m
//  XCTestTutorialTests
//
//  Created by Nikos Maounis on 26/4/14.
//  Copyright (c) 2014 Nikos Maounis. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController_Private.h"

@interface XCTestTutorialTests : XCTestCase

@property (nonatomic, strong) ViewController *vc;

@end

@implementation XCTestTutorialTests

- (void)setUp
{
    [super setUp];
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.vc = [storyboard instantiateViewControllerWithIdentifier:@"testTableView"];
    [self.vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
