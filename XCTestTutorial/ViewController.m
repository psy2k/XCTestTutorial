//
//  ViewController.m
//  XCTestTutorial
//
//  Created by Nikos Maounis on 26/4/14.
//  Copyright (c) 2014 Nikos Maounis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

#pragma mark - View loading methods
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"XCTest Tutorial";
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Memory warning methods
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView delegate methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *reuseId = [NSString stringWithFormat:@"%ld/%ld",(long)indexPath.section,(long)indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if(!cell)
    {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;

    }

    cell.textLabel.text = [NSString stringWithFormat:@"Row %ld", (long)indexPath.row+1];

    return cell;
}

@end
