//
//  AppDelegate.m
//  JavaScriptObjCTest
//
//  Created by Antoine Quint on 20/06/14.
//  Copyright (c) 2014 Studio Luco. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomJSObject.h"
@import JavaScriptCore;

@interface AppDelegate ()
            
@property (weak) IBOutlet NSWindow *window;
@property JSContext *context;

@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"Started");
    _context = [[JSContext alloc] init];
    [_context.globalObject setValue:[[CustomJSObject alloc] init] forProperty:@"customObject"];
    [_context evaluateScript:@"console.log('Running tests')"];
    [_context evaluateScript:@"customObject.testProperty"];
    [_context evaluateScript:@"customObject.testProperty = 'foo'"];
    [_context evaluateScript:@"customObject.testFunction()"];
    [_context evaluateScript:@"console.log('Done')"];
    NSLog(@"Done");
}

@end
