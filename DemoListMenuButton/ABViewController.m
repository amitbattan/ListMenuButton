//
//  ABViewController.m
//  DemoListMenuButton
//
//  Created by Amit Battan on 11/12/12.
//  Copyright (c) 2012 Amit Battan. All rights reserved.
//

#import "ABViewController.h"

@interface ABViewController ()

@end

@implementation ABViewController

- (void)viewDidLoad
{
    
    NSMutableArray *LMBtnChangeTitleListArray = [[[NSMutableArray alloc] init] autorelease];
    [LMBtnChangeTitleListArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"menu1", @"key", @"Menu 1", @"value", nil]];
    [LMBtnChangeTitleListArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"menu2", @"key", @"Menu 2", @"value", nil]];

    ListMenuButton *LMBtnChangeTitle = [[ListMenuButton alloc] initWithList:LMBtnChangeTitleListArray delegate:self];
    [LMBtnChangeTitle setTitle:@"Menu List" forState:UIControlStateNormal];
    LMBtnChangeTitle.layer.borderWidth = 1;
    LMBtnChangeTitle.layer.borderColor = [UIColor blackColor].CGColor;
    LMBtnChangeTitle.layer.backgroundColor = [UIColor colorWithRed:(196/255.f) green:(196/255.f) blue:(196/255.f) alpha:1.0].CGColor;
    LMBtnChangeTitle.frame = CGRectMake((self.view.frame.size.width-160)/2, 200, 160, 30);
    LMBtnChangeTitle.updateButtonTitleOnChange = YES;
    LMBtnChangeTitle.arrowDirection = UIPopoverArrowDirectionAny;
    [self.view addSubview:LMBtnChangeTitle];

    
    NSMutableArray *LMBtnOnlyActionArray = [[[NSMutableArray alloc] init] autorelease];
    [LMBtnOnlyActionArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"action1", @"key", @"Action 1", @"value", nil]];
    [LMBtnOnlyActionArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"action2", @"key", @"Action 2", @"value", nil]];
    
    ListMenuButton *LMBtnOnlyAction = [[ListMenuButton alloc] initWithList:LMBtnOnlyActionArray delegate:self];
    [LMBtnOnlyAction setTitle:@"Action List" forState:UIControlStateNormal];
    LMBtnOnlyAction.layer.borderWidth = 1;
    LMBtnOnlyAction.layer.borderColor = [UIColor blackColor].CGColor;
    LMBtnOnlyAction.layer.backgroundColor = [UIColor colorWithRed:(196/255.f) green:(196/255.f) blue:(196/255.f) alpha:1.0].CGColor;
    LMBtnOnlyAction.frame = CGRectMake((self.view.frame.size.width-160)/2, 300, 160, 30);
    LMBtnOnlyAction.updateButtonTitleOnChange = NO;
    LMBtnOnlyAction.arrowDirection = UIPopoverArrowDirectionAny;
    [self.view addSubview:LMBtnOnlyAction];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ListMenu Delegate
-(void)listMenu:(ListMenuButton *)listMenu didSelectListItem:(id)selectListItemInfo{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Update!" message:[selectListItemInfo objectForKey:@"value"] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alertView show];
    [alertView release];
}


@end
