//
//  FirstViewController.m
//  tabbarTest
//
//  Created by 이 상찬 on 13. 7. 10..
//  Copyright (c) 2013년 이 상찬. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        UISwipeGestureRecognizer *swipeRecognizer = [[UISwipeGestureRecognizer alloc]
                                                 initWithTarget:self action:@selector(swipe:)];
        [swipeRecognizer setNumberOfTouchesRequired:1];
        [swipeRecognizer setDelegate:self];
        //Don't forget to set the userInteractionEnabled to YES, by default It's NO.
        self.view.userInteractionEnabled = YES;
        [self.view addGestureRecognizer:swipeRecognizer];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) swipe:(id) sender
{
    NSLog(@"swipe!!");
}

@end
