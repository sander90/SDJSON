//
//  NSObject+AJson.h
//  New_AICO
//
//  Created by shansander on 15/9/9.
//  Copyright (c) 2015年 shansander. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark JSON Writing

/// Adds JSON generation to NSObject
@interface NSObject (NSObject_AJsonWriting)

/**
 * object转换成JSON 字符串
 */
- (NSString *)JSONRepresentation;

@end

@interface NSDictionary (NSObject_AJsonWriting)


- (NSString *)JSONRepresentation;

@end

@interface NSMutableDictionary (NSObject_AJsonWriting)

- (NSString *)JSONRepresentation;

@end


#pragma mark JSON Parsing

/// Adds JSON parsing methods to NSString
@interface NSString (NSString_AJsonParsing)

/**
 * Json字符串转换成字典
 */
- (id)JSONValue;

@end

/// Adds JSON parsing methods to NSData
@interface NSData (NSData_AJsonParsing)

/**
 * json NSData 转换成 字典NSData
 */
- (id)JSONValue;
@end