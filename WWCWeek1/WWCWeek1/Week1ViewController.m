//
//  Week1ViewController.m
//  WWCWeek1
//
//  Created by Stephanie Shupe on 3/21/13.
//  Copyright (c) 2013 Women Who Code. All rights reserved.
//

#import "Week1ViewController.h"

@interface Week1ViewController () <UITextFieldDelegate>
- (IBAction)dismissKeyboard:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation Week1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.


    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.meetup.com/Women-Who-Code-SF/"]]];

    self.myScrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, 1720);
    self.myScrollView.scrollEnabled = YES;
    [self.view addSubview:self.myScrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.myTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.myTextField resignFirstResponder];
    return YES;
}

@end
