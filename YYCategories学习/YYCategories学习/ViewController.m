//
//  ViewController.m
//  YYCategories学习
//
//  Created by 刘洪 on 2018/8/28.
//  Copyright © 2018年 刘洪. All rights reserved.
//

#import "ViewController.h"
#import "YYCategories.h"

@interface ViewController ()
@property (nonatomic,weak)CALayer *layer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CALayer *layer = [[CALayer alloc]init];
    layer.frame = (CGRect){.origin = {10,10},.size = {100,100}};
    layer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer];
    self.view.backgroundColor = [UIColor greenColor];
    self.layer = layer;
    [layer addFadeAnimationWithDuration:10 curve:UIViewAnimationCurveEaseInOut];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.layer setTransformTranslationX:100];
}


@end
