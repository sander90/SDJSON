//
//  NSObject+AJson.m
//  New_AICO
//
//  Created by shansander on 15/9/9.
//  Copyright (c) 2015年 shansander. All rights reserved.
//

#import "NSObject+AJson.h"
#import "DReleaseDefine.h"

@implementation NSObject (NSObject_AJsonWriting)

- (NSString *)JSONRepresentation {
    NSError * error;
    NSData * data =  [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    NSString * jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (!jsonString)
        DLog(@"-JSONRepresentation failed. Error is: %@", error);
    return jsonString;
}

@end

@implementation NSDictionary (NSObject_AJsonWriting)

- (NSString *)JSONRepresentation {
    NSError * error;
    NSData * data =  [NSJSONSerialization dataWithJSONObject:self options:0  error:&error];
    NSString * jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (!jsonString)
        DLog(@"-JSONRepresentation failed. Error is: %@", error);
    return jsonString;
}
@end

@implementation NSMutableDictionary (NSObject_AJsonWriting)

- (NSString *)JSONRepresentation {
    
    NSError * error;
    NSData * data =  [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    NSString * jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (!jsonString)
        DLog(@"-JSONRepresentation failed. Error is: %@", error);
    return jsonString;
}

@end

@implementation NSString (NSString_AJsonParsing)

- (id)JSONValue {
    
    NSData * readData = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    return [readData JSONValue];
    
}

@end



@implementation NSData (NSData_AJsonParsing)

- (id)JSONValue {
    NSError * error;
     id obj = [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves|NSJSONReadingAllowFragments error:&error];
    if (!error)
        DLog(@"-JSONValue failed. Error is: %@", error);
    return obj;
}

@end


