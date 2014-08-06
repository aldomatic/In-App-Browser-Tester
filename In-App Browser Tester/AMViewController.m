//
//  AMViewController.m
//  In-App Browser Tester
//
//  Created by Aldo Lugo on 8/6/14.
//  Copyright (c) 2014 Aldo Lugo. All rights reserved.
//

#import "AMViewController.h"

@interface AMViewController ()

@end

@implementation AMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [userUrl setDelegate:self];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSURL *urlIS = [NSURL URLWithString:[userUrl text]];
    NSURLRequest *myURLRequest = [NSURLRequest requestWithURL:urlIS];
    [myWeb loadRequest:myURLRequest];
    [textField resignFirstResponder];
    return YES;
}

- (IBAction) previousClicked:(id)sender
{
    if([myWeb canGoBack]){
        [myWeb goBack];
    }
    
}

- (IBAction) refreshClicked:(id)sender
{
    [myWeb reload];
    
}

- (IBAction) forwardClicked:(id)sender
{
    if([myWeb canGoForward]){
        [myWeb goForward];
    }
}

- (IBAction) loadUrlIntoView:(id)sender{
    NSURL *urlIS = [NSURL URLWithString:[userUrl text]];
    NSURLRequest *myURLRequest = [NSURLRequest requestWithURL:urlIS];
    [myWeb loadRequest:myURLRequest];
    [userUrl resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end