//
//  CustomJSObject.h
//  JavaScriptObjCTest
//
//  Created by Antoine Quint on 20/06/14.
//  Copyright (c) 2014 Studio Luco. All rights reserved.
//

#import <Foundation/Foundation.h>
@import JavaScriptCore;

@protocol JSCustomObjectExport <JSExport>

@property NSString *testProperty;
- (NSString*)testFunction;

@end

@interface CustomJSObject : NSObject <JSCustomObjectExport>

@end
