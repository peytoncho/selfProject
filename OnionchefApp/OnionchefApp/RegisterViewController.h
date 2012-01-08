//
//  RegisterViewController.h
//  OnionchefApp
//
//  Created by peyton Cho on 11-12-23.
//  Copyright (c) 2011 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController<UITextFieldDelegate>{
    IBOutlet UITextField *username;
    IBOutlet UITextField *email;
    IBOutlet UITextField *password;
}

@property (nonatomic, strong)IBOutlet UITextField *username;

@property (nonatomic, strong)IBOutlet UITextField *email;

@property (nonatomic, strong)IBOutlet UITextField *password;

-(IBAction)login;

-(IBAction)hideKeybroad:(id) sender;
-(void)textFieldInputAnimation:(NSInteger) setMovePixel;

@end
