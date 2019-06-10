//
//  ViewController.m
//  XGYNetWorkComponents
//
//  Created by xuguangyao on 2019/6/6.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import "ViewController.h"
#import "XGYMediator+NetWorkMediatorModule.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    [[XGYMediator sharedInstance] postRequestwithURL:@"url" withParmeters:@{@"data":@"d"} withResultBack:^(id  _Nonnull obj, NSError * _Nonnull error) {
        NSLog(@"==%@",obj);
    }];
}


@end
