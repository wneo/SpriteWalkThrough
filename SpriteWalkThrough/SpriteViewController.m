//
//  SpriteViewController.m
//  SpriteWalkThrough
//
//  Created by neo on 13-12-8.
//  Copyright (c) 2013年 neo. All rights reserved.
//

#import "SpriteViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "HelloScene.h"

@interface SpriteViewController ()

@end

@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	SKView *spriteView = (SKView *)self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsFPS = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    HelloScene *hello = [[HelloScene alloc] initWithSize:self.view.frame.size];
    SKView *spriteView = (SKView *)self.view;
    [spriteView presentScene:hello];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
