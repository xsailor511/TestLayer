//
//  ViewController.m
//  TestLayer
//
//  Created by richard on 16/1/19.
//  Copyright © 2016年 richard. All rights reserved.
//

#import "ViewController.h"
#import "ButtonUtil.h"
#import "ViewWithBorder.h"
#import "UIView+Border.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testButtonBorder];
    [self testCal];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//测试位运算符
-(void)testCal{
    NSInteger a = 1 >> 1;
    NSLog(@"a = %li",(long)a);
    
    NSInteger b = 512 >> 1;
    NSLog(@"b = %li",(long)b);
    
    NSLog(@"%lx",~0UL);
    
}

-(void)testButtonBorder{
    
    [self testButtonUtil];
    [self testViewWithBorder];
    [self testViewCategory];
    
    
}

-(void)testButtonUtil{
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(8, 78, 70, 40)];
    [button setBackgroundColor:[UIColor yellowColor]];
    [ButtonUtil addBorder:button borderColor:[UIColor blackColor] borderWidth:1 borders:UIButtonBorderLeft | UIButtonBorderRight | UIButtonBorderTop | UIButtonBorderBottom];
    
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 78, 70, 40)];
    [button2 setBackgroundColor:[UIColor yellowColor]];
    [ButtonUtil addDottedBorder:button2 borderColor:[UIColor blackColor] borderWidth:1 borders:UIButtonBorderAllBorders];

    
    [self.view addSubview:button2];
}

-(void)testViewWithBorder{
    ViewWithBorder *borderView = [[ViewWithBorder alloc] initWithFrame:CGRectMake(8, 140, 80, 40)];
    [borderView setBackgroundColor:[UIColor greenColor]];
    [borderView addBorder:[UIColor blackColor] borderWidth:1 borders:UIViewBorderAllBorders];
    
    [self.view addSubview:borderView];
    
    ViewWithBorder *dottedView =[[ViewWithBorder alloc] initWithFrame:CGRectMake(100, 140, 80, 40)];
    [dottedView setBackgroundColor:[UIColor greenColor]];
    [dottedView addDottedBorder:[UIColor blackColor] borderWidth:1 borders:UIViewBorderAllBorders];
    
    [self.view addSubview:dottedView];
}

-(void)testViewCategory{
    
    UIView *viewCategory = [[UIView alloc] initWithFrame:CGRectMake(8, 260, 100, 60)];
    [viewCategory setBackgroundColor:[UIColor blueColor]];
    [viewCategory addBorder:[UIColor blackColor] borderWidth:2 borders:UIViewCategoryBorderAllBorders];
    [self.view addSubview:viewCategory];
    
    UIView *viewCategory2 = [[UIView alloc] initWithFrame:CGRectMake(138, 260, 100, 60)];
    [viewCategory2 setBackgroundColor:[UIColor blueColor]];
    [viewCategory2 addDottedBorder:[UIColor blackColor] borderWidth:1 borders:UIViewCategoryBorderAllBorders];
    [self.view addSubview:viewCategory2];
}

@end
