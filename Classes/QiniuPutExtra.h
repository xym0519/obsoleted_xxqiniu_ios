//
//  QiniuPutExtra.h
//  QiniuSDK
//
//  Created by Qiniu Developers 2013
//  Modified by Broche at 2014.01.16
//

#import <Foundation/Foundation.h>

@interface QiniuPutExtra : NSObject

// user comtom params, refer to http://docs.qiniu.com/api/put.html#xVariables
@property (strong, nonatomic) NSDictionary *params;

// specify file's mimeType, or server side automatically determine the mimeType.
@property (strong, nonatomic) NSString *mimeType;

// specify file's crc32 value.
// server side can check it for integrity accodring to the value of checkCrc.
@property UInt32 crc32;

// if checkCrc is 0, server side will not check crc32.
// if checkCrc is 1, server side will check crc32 using the value of crc32.
@property UInt32 checkCrc;

@end
