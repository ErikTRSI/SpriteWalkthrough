//
//  HelloScene.m
//  SpriteWalkthrough
//
//  Created by Erik K on 7/22/14.
//  Copyright (c) 2014 trsi. All rights reserved.
//

#import "HelloScene.h"

@interface HelloScene ()
@property BOOL contentCreated;
@end

@implementation HelloScene

- (void) didMoveToView:(SKView *)view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

-(void) createSceneContents
{
    self.backgroundColor = [SKColor blueColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self addChild: [self newHelloNode]];
    [self addChild: [self someButtonNode]];
}

-(SKLabelNode *)newHelloNode
{
    SKLabelNode *helloNode = [SKLabelNode labelNodeWithFontNamed: @"Chalkduster"];
    helloNode.text = @"RUMSPRINGER!";
    helloNode.fontSize = 42;
    helloNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    return helloNode;
}

-(SKSpriteNode *) someButtonNode
{
    SKSpriteNode *buttonNode = [SKSpriteNode spriteNodeWithColor:[SKColor purpleColor] size:CGSizeMake(100, 100) ];
    buttonNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - 100);
    buttonNode.name = @"someButtonNode";
    return buttonNode;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    if ([node.name isEqualToString:@"someButtonNode"]) {
        NSLog(@"touched someButtonNode");
        [self.view.window.rootViewController reloadInputViews];
    }
}

@end
