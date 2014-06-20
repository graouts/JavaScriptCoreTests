//
//  CustomJSObject.m
//  JavaScriptObjCTest
//
//  Created by Antoine Quint on 20/06/14.
//  Copyright (c) 2014 Studio Luco. All rights reserved.
//

#import "CustomJSObject.h"

@implementation CustomJSObject

@synthesize testProperty;

- (NSString *)testProperty
{
    NSLog(@"get testProperty");
    return @"testProperty";
}

- (void)setTestProperty:(NSString *)testProperty
{
    NSLog(@"set testProperty");
}

- (NSString *)testFunction
{
    NSLog(@"called testFunction");
    return @"testFunction()";
}

@end
