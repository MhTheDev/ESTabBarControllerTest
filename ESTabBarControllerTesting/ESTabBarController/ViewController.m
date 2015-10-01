//
//  ViewController.m
//  ESTabBarController
//
//  Created by Mohamad Moudallal on 9/28/15.
//  Copyright © 2015 Mohamad Moudallal. All rights reserved.
//

#import "ViewController.h"
#import "ESTabBarController+Autolayout.h"
#import "UIButton+ESTabBar.h"
#import "ESTabBarController.h"

#import "SearchViewController.h"
#import "ProfileViewController.h"
#import "EmailViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ESTabBarController *tabBarController = [[ESTabBarController alloc] initWithTabIcons:@[[UIImage imageNamed:@"Search"], [UIImage imageNamed:@"Profile"], [UIImage imageNamed:@"Email"]]];
    
    [self addChildViewController:tabBarController];
    
    [self.view addSubview:tabBarController.view];
    tabBarController.view.frame = self.view.bounds;
    
    [tabBarController didMoveToParentViewController:self];
    
    
    
    tabBarController.selectedColor = [UIColor colorWithRed:0.15 green:0.29 blue:0.50 alpha:1];
    tabBarController.buttonsBackgroundColor = [UIColor colorWithWhite:1 alpha:1];
    
    // Highlighted buttons.
    
    [tabBarController highlightButtonAtIndex:1];
    
    [tabBarController setViewController:[[SearchViewController alloc] init] atIndex:0];
    
    [tabBarController setViewController:[[ProfileViewController alloc] init] atIndex:1];
    
    [tabBarController setViewController:[[EmailViewController alloc] init] atIndex:2];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
