//
//  LoginViewController.m
//  OnionchefApp
//
//  Created by peyton Cho on 11-12-26.
//  Copyright (c) 2011 Simon Fraser University. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController


@synthesize username, password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    username.delegate = self;
    password.delegate = self;
    
    self.view.backgroundColor = [[UIColor alloc]initWithPatternImage:[UIImage imageNamed:@"sign-in_forIPhone.png"]];
    [super viewDidLoad];
}


//
-(void)textFieldInputAnimation:(NSInteger) setMovePixel{
    NSTimeInterval animationDuration=0.30f;
    [UIView beginAnimations:@"ResizeForKeyboard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    float width=self.view.frame.size.width;
    float height=self.view.frame.size.height;
    CGRect rect=CGRectMake(0.0f,setMovePixel,width,height);
    self.view.frame=rect;
    [UIView commitAnimations];
}


-(IBAction)hideKeybroad:(id)sender{
    [username resignFirstResponder];
    //[email resignFirstResponder];
    [password resignFirstResponder];
    [self textFieldInputAnimation:20];
    
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"   begin editing ");
    
    //
    if(textField == username){
        [self textFieldInputAnimation:-80];
    }else if(textField == password){
        [self textFieldInputAnimation:-120];
    }
    
    return YES;
}

-(IBAction)backToRegister{
    [self dismissModalViewControllerAnimated:YES];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
