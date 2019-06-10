//
//  Target_NetWork.h
//  XGYNetWorkComponents
//
//  Created by xuguangyao on 2019/6/6.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_NetWork : NSObject

/**
 post请求

 @param parmeters 其中key值url代表请求地址，data代表请求参数
 */
- (void)Action_postRequestwithURLParmeters:(NSDictionary *)parmeters;

/**
 get请求

 @param parmeters 其中key值url代表请求地址，data代表请求参数
 */
- (void)Action_getRequestwithURLParmeters:(NSDictionary *)parmeters;

@end

NS_ASSUME_NONNULL_END
