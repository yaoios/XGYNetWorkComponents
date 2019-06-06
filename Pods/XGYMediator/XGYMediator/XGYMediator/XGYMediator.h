//
//  XGYMediator.h
//  XGYMediator
//
//  Created by xuguangyao on 2019/6/3.
//  Copyright © 2019年 com.haqi. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const kCTMediatorParamsKeySwiftTargetModuleName;

NS_ASSUME_NONNULL_BEGIN

@interface XGYMediator : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;
// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end

NS_ASSUME_NONNULL_END
