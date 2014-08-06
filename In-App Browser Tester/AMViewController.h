//
//  AMViewController.h
//  In-App Browser Tester
//
//  Created by Aldo Lugo on 8/6/14.
//  Copyright (c) 2014 Aldo Lugo. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface AMViewController : UIViewController <UITextFieldDelegate>{
    IBOutlet UIWebView *myWeb;
    IBOutlet UIBarButtonItem *previousBtn;
    IBOutlet UIBarButtonItem *refreshBtn;
    IBOutlet UIBarButtonItem *forwardBtn;
    IBOutlet UITextField *userUrl;
    
}

- (IBAction) previousClicked:(id)sender;
- (IBAction) refreshClicked:(id)sender;
- (IBAction) forwardClicked:(id)sender;
- (IBAction) loadUrlIntoView:(id)sender;


@end
