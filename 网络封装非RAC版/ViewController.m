//
//  ViewController.m
//  网络封装非RAC版
//
//  Created by li on 16/1/16.
//  Copyright © 2016年 li. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testPost];
}

- (void)testPost{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"client_id"] = @"835d6c6ba8df3b09";
    dict[@"keyword"] = @"我和僵尸有个约会";
    
    
    [[NetWorkTools shareTools] request:POST Url:@"https://openapi.youku.com/v2/searches/video/by_keyword.json" parameters:dict success:^(id responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];
    
    
}

- (void)testGet{
    
}

@end
