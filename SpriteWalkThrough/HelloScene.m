//
//  HelloScene.m
//  SpriteWalkThrough
//
//  Created by neo on 13-12-8.
//  Copyright (c) 2013年 neo. All rights reserved.
//

#import "HelloScene.h"
@interface HelloScene ()
@property (nonatomic) BOOL contentCreated;
@end


@implementation HelloScene
- (void)didMoveToView:(SKView *)view
{
    if (!self.contentCreated) {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void)createSceneContents
{
    self.backgroundColor = [SKColor grayColor];
    self.scaleMode = SKSceneScaleModeAspectFill;
    [self addChild:[self newHelloNote]];
}

- (SKLabelNode *)newHelloNote
{
    SKLabelNode *helloNote = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    helloNote.text = @"Hello Sprite game!";
    helloNote.fontSize = 40;
    helloNote.fontColor = [SKColor blackColor];
    helloNote.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    return helloNote;
}

@end
