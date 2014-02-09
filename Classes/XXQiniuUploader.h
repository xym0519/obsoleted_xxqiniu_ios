//
//  XXQiniuUploader.h
//  develop
//
//  Created by Broche Xu on 2/9/14.
//  Copyright (c) 2014 xxworkshop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XXQiniuUploadDelegate.h"

@interface XXQiniuUploader : NSObject
@property(nonatomic)id<XXQiniuUploadDelegate> delegate;
- (id)initWithAK:(NSString *)ak SK:(NSString *)sk Bucket:(NSString *)bucket CallbackUrl:(NSString *)callbackUrl CallbackBody:(NSString *)callbackBody;
- (void)uploadFile:(NSData *)fileData key:(NSString *)key;
@end
