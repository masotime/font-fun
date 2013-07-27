//
//  Utility.h
//  FontSandbox1
//
//  Created by Benjamin Goh on 27/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

+ (void) flash:(UIWebView*)webView;
+ (void) removeBackgroundShadows:(UIWebView *)webView withBackground:(UIColor *)color;
+ (void) load:(UIWebView*)webView withHTMLString:(NSString*) htmlString;
+ (void) load:(UIWebView*)webView withHTMLFile:(NSString*)file;
+ (NSString*) loadStringFromFile:(NSString*)fileName;

@end
