//
//  SecondViewController.m
//  tabbarTest
//
//  Created by 이 상찬 on 13. 7. 10..
//  Copyright (c) 2013년 이 상찬. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.searchBar becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    //[self.view becomeFirstResponder];
    [searchBar resignFirstResponder];
    for (int i = 0; i < 4; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setFrame:CGRectMake((i+1)*50, (i+1)*50, 50, 50)];
        [button setTag:i];
        [button setTitle:[NSString stringWithFormat:@"%d 버튼",i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

-(IBAction)buttonClicked:(id)sender {
    UIButton *input = (UIButton *)sender;
    NSLog(@"%d clicked",input.tag);
}

@end
