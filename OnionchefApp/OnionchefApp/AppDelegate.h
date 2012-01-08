//
//  AppDelegate.h
//  OnionchefApp
//
//  Created by peyton Cho on 11-12-20.
//  Copyright (c) 2011 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "navController.h"


@interface AppDelegate : NSObject <UIApplicationDelegate, UINavigationBarDelegate>{
    RegisterViewController *resgisterViewCtr;
    navController *navCtr;
}




@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) navController *navCtr;


-(void) showNav;
@end
