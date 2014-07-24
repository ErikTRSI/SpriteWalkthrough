//
//  ViewController.m
//  SpriteWalkthrough
//
//  Created by Erik K on 7/22/14.
//  Copyright (c) 2014 trsi. All rights reserved.
//

#import "ViewController.h"
#import "HelloScene.h"
#import <SpriteKit/SpriteKit.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SKView *sceneView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.sceneView.showsDrawCount = YES;
    self.sceneView.showsNodeCount = YES;
    self.sceneView.showsFPS = YES;

}

- (void)viewWillAppear:(BOOL)animated
{
    HelloScene *hello = [[HelloScene alloc] initWithSize:CGSizeMake(768, 1024)];
    [self.sceneView presentScene: hello];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
