//
//  Target_NetWork.m
//  XGYNetWorkComponents
//
//  Created by xuguangyao on 2019/6/6.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import "Target_NetWork.h"
#import <AFNetworking.h>

typedef void (^YRequestCallbackBlock)(NSDictionary *info,NSError *error);

@implementation Target_NetWork

/**
 post请求
 
 @param parmeters 其中key值url代表请求地址，data代表请求参数
 */
- (void)Action_postRequestwithURLParmeters:(NSDictionary *)parmeters {
    
    YRequestCallbackBlock callback = parmeters[@"backResult"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //是否信任非法证书
    manager.securityPolicy.allowInvalidCertificates = YES;
    // 是否在证书域字段中验证域名
    [manager.securityPolicy setValidatesDomainName:NO];
    // 设置请求格式
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    // 设置返回格式
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    manager.requestSerializer.timeoutInterval = 10;
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml", @"text/xml", @"text/html",@"application/json", @"text/plain",@"image/jpeg", nil];
    [manager POST:parmeters[@"url"] parameters:parmeters[@"data"] progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        callback(responseObject,nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
         callback(nil,error);
        
    }];
   
}

/**
 get请求
 
 @param parmeters 其中key值url代表请求地址，data代表请求参数
 */
- (void)Action_getRequestwithURLParmeters:(NSDictionary *)parmeters {
    
    YRequestCallbackBlock callback = parmeters[@"backResult"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.requestSerializer.timeoutInterval = 10;
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/xml", @"text/xml", @"text/html",@"application/json", @"text/plain",@"image/jpeg", nil];
    [manager GET:parmeters[@"url"] parameters:parmeters[@"data"] progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        callback(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        callback(nil,error);
    }];
    
}

@end
