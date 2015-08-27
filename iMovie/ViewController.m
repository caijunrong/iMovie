//
//  ViewController.m
//  iMovie
//
//  Created by biyabi on 15/8/27.
//  Copyright (c) 2015年 iMovie. All rights reserved.
//

#import "ViewController.h"
#import "NewsViewController.h"
#import "TheatreViewController.h"
#import "MovieViewController.h"
#import "ActivityViewController.h"
#import "MyViewController.h"

@interface ViewController ()<UITabBarControllerDelegate>
@property (nonatomic, strong) UITabBarController *tabBarController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    
    
    NewsViewController *news = [[NewsViewController alloc]init];
    [news setTitle:@"资讯"];
    
    TheatreViewController *thea = [[TheatreViewController alloc]init];
    [thea setTitle:@"影院"];
    
    MovieViewController *movie = [[MovieViewController alloc]init];
    [movie setTitle:@"电影"];
    
    ActivityViewController *acti = [[ActivityViewController alloc]init];
    [acti setTitle:@"活动"];
    
    MyViewController *my = [[MyViewController alloc]init];
    [my setTitle:@"我的"];
    
    self.tabBarController = [[UITabBarController alloc] init];
    if([[[UIDevice currentDevice]systemVersion]floatValue]<7.0)
    {
        self.tabBarController.view.frame = CGRectMake(0,-20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-0);
    }
    self.tabBarController.delegate = self;
    
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:
                                             news,
                                             thea,
                                             movie,
                                             acti,
                                             my,
                                             nil];
    self.tabBarController.tabBar.backgroundColor = [UIColor blackColor];
    self.tabBarController.tabBar.tintColor = [UIColor lightGrayColor];
    
    
    
    [self addChildViewController:self.tabBarController];
    [self.view addSubview:self.tabBarController.view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
