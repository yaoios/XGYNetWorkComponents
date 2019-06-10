//
//  XGYMediator+NetWorkMediatorModule.m
//  XGYNetWorkComponents
//
//  Created by xuguangyao on 2019/6/6.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import "XGYMediator+NetWorkMediatorModule.h"

NSString * const yTargetClassNetWork = @"NetWork";
NSString * const yActionPostMethods = @"postRequestwithURLParmeters";
NSString * const yActionGetMethods = @"getRequestwithURLParmeters";
@implementation XGYMediator (NetWorkMediatorModule)

- (void)postRequestwithURL:(NSString *)url withParmeters:(NSDictionary *)parmeters withResultBack:(void (^)(id obj,NSError * error))backResult {
    
    if (parmeters) {
        NSMutableDictionary *dicData = [NSMutableDictionary dictionary];
        dicData[@"url"] = url;
        dicData[@"backResult"] = backResult;
        dicData[@"data"] = parmeters;
        [self performTarget:yTargetClassNetWork action:yActionPostMethods params:dicData shouldCacheTarget:NO];
        
    }
}


/**
 get请求
 
 @param url 请求地址
 @param parmeters 请求参数
 @param backResult 结果回调
 */
- (void)getRequestwithURL:(NSString *)url withParmeters:(NSDictionary *)parmeters withResultBack:(void (^)(id obj,NSError * error))backResult {
    if (parmeters) {
        NSMutableDictionary *dicData = [NSMutableDictionary dictionary];
        dicData[@"url"] = url;
        dicData[@"backResult"] = backResult;
        dicData[@"data"] = parmeters;
        [self performTarget:yTargetClassNetWork action:yActionGetMethods params:dicData shouldCacheTarget:NO];
        
    }
}
@end
