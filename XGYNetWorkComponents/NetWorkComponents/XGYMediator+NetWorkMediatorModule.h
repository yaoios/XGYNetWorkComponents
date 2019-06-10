//
//  XGYMediator+NetWorkMediatorModule.h
//  XGYNetWorkComponents
//
//  Created by xuguangyao on 2019/6/6.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import "XGYMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface XGYMediator (NetWorkMediatorModule)



/**
 post请求

 @param url 请求地址
 @param parmeters 请求参数
 @param backResult 结果回调
 */
- (void)postRequestwithURL:(NSString *)url withParmeters:(NSDictionary *)parmeters withResultBack:(void (^)(id obj,NSError * error))backResult;

/**
 get请求

 @param url 请求地址
 @param parmeters 请求参数
 @param backResult 结果回调
 */
- (void)getRequestwithURL:(NSString *)url withParmeters:(NSDictionary *)parmeters withResultBack:(void (^)(id obj,NSError * error))backResult;
@end

NS_ASSUME_NONNULL_END
