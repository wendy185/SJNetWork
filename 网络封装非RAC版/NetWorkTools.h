//
//  NetWorkTools.h
//  02-RAC
//
//  Created by li on 15/12/6.
//  Copyright © 2015年 li. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef enum : NSUInteger {
    GET,
    POST
} RequestMethod;

@interface NetWorkTools : AFHTTPSessionManager

+ (instancetype)shareTools;

- (void)request:(RequestMethod)method Url:(NSString *)urlString parameters:(id)parameters success:(void (^)(id responseObject))success
        failure:(void (^)(NSError *error))failure;

@end
