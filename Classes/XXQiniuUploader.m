//
//  XXQiniuUploader.m
//  develop
//
//  Created by Broche Xu on 2/9/14.
//  Copyright (c) 2014 xxworkshop. All rights reserved.
//

#import "XXQiniuUploader.h"
#import "QiniuSimpleUploader.h"
#import "QiniuPutPolicy.h"

@implementation XXQiniuUploader {
    QiniuSimpleUploader *uploader;
}

- (id)initWithAK:(NSString *)ak SK:(NSString *)sk Bucket:(NSString *)bucket CallbackUrl:(NSString *)callbackUrl CallbackBody:(NSString *)callbackBody {
    self = [super init];
    if (self) {
        QiniuPutPolicy *policy = [[QiniuPutPolicy alloc] init];
        policy.scope = bucket;
        policy.callbackUrl = callbackUrl;
        policy.callbackBody = callbackBody;
        uploader = [QiniuSimpleUploader uploaderWithToken:[policy makeToken:ak secretKey:sk]];
    }
    return self;
}

- (void)uploadFile:(NSData *)fileData key:(NSString *)key {
    [uploader uploadFileData:fileData key:key extra:nil];
}

- (void)setDelegate:(id<XXQiniuUploadDelegate>)delegate {
    uploader.delegate = delegate;
}

- (XXQiniuUploader *)delegate {
    return uploader.delegate;
}
@end
