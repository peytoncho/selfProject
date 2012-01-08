//
//  LoginViewController.h
//  OnionchefApp
//
//  Created by peyton Cho on 11-12-26.
//  Copyright (c) 2011 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>{
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
}





@property (nonatomic, strong)IBOutlet UITextField *username;
@property (nonatomic, strong)IBOutlet UITextField *password;


-(IBAction)backToRegister;
-(IBAction)hideKeybroad:(id) sender;
-(void)textFieldInputAnimation:(NSInteger) setMovePixel;

@end
