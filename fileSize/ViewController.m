//
//  ViewController.m
//  fileSize
//
//  Created by Leo的Mac on 16/11/18.
//  Copyright © 2016年 LYW. All rights reserved.
//

#import "ViewController.h"
#import "NSString+LYWExtension.h"

@interface ViewController ()

/** uilable */
@property (strong, nonatomic)UILabel *lab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _lab = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 50)];
    _lab.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_lab];
    
    NSString *caches = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    NSString *path = [caches stringByAppendingPathComponent:@"Custom"];

    _lab.text = [NSString stringWithFormat:@"清除缓存：（%lld）",path.fileSize];
    
}


@end
