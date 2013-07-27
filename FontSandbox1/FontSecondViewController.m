//
//  FontSecondViewController.m
//  FontSandbox1
//
//  Created by Benjamin Goh on 13/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//

#import "FontSecondViewController.h"
#import "Utility.h"

@interface FontSecondViewController ()

@end

@implementation FontSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Load it to the webview
    [Utility load:self.content withHTMLFile:@"news.html"];
    [Utility removeBackgroundShadows:self.content withBackground:[UIColor whiteColor]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setContent:nil];
    [super viewDidUnload];
}
@end
