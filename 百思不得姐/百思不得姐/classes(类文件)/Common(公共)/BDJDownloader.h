//
//  BDJDownloader.h
//  百思不得姐
//
//  Created by Silence on 16/11/22.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <Foundation/Foundation.h>

//将闭包定义成一个类型
typedef void(^SUCCESSBLOCK)(NSData *data) ;
typedef void(^FAILBLOCK)(NSError *error) ;

@interface BDJDownloader : NSObject



+(void)downloadWithUrlString:(NSString *)urlString success:(void(^)(NSData *data)) finishBlock fail:(void(^)(NSError *error))failBlock;

//参数名可以省略，下面这样写也是对的
//+(void)downloadWithUrlString:(NSString *)urlString success:(void(^)(NSData *)) finishBlock fail:(void(^)(NSError *))failBlock;

//也可以这样写(前提是将 block 定义成类型)
//+(void)downloadWithUrlString:(NSString *)urlString success:(SUCCESSBLOCK) finishBlock fail:(FAILBLOCK)failBlock;

@end
