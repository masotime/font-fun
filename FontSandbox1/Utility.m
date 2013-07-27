//
//  Utility.m
//  FontSandbox1
//
//  Created by Benjamin Goh on 27/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//

#import "Utility.h"

@implementation Utility

// see http://www.neoos.ch/blog/43-three-useful-uiwebview-tweaks
+(void) flash:(UIWebView *)webView {

    for (id subView in [webView subviews]) {
      if ([subView respondsToSelector:@selector(flashScrollIndicators)]) {
        [subView flashScrollIndicators];
      }
    }
}

+(void) removeBackgroundShadows:(UIWebView *)webView withBackground:(UIColor *)color {
    if ([[webView subviews] count] > 0) {
      // hide the shadows
      for (UIView* shadowView in [[[webView subviews] objectAtIndex:0] subviews]) {
        [shadowView setHidden:YES];
      }
      // show the content
      [[[[[webView subviews] objectAtIndex:0] subviews] lastObject] setHidden:NO];
    }
    webView.backgroundColor = color;
}

+(void) load:(UIWebView*)webView withHTMLString:(NSString*) htmlString {

    [webView loadHTMLString:htmlString baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];
}

+(void) load:(UIWebView*)webView withHTMLFile:(NSString*)file {
    NSString* htmlString = [Utility loadStringFromFile:file];
    
    [webView loadHTMLString:htmlString baseURL:nil];
}

+ (NSString*) loadStringFromFile:(NSString*)fileName {
    NSString* namePart = [fileName componentsSeparatedByString:@"."][0];
    NSString* extensionPart = [fileName componentsSeparatedByString:@"."][1];
    NSString* filePath = [[NSBundle mainBundle] pathForResource:namePart ofType:extensionPart];
    
    NSError* errorObj;
    NSString *textData = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&errorObj];
    
    if (errorObj) {
        NSLog(@"Error trying to load file %@", fileName);
        NSLog(@"%@", [errorObj localizedDescription]);
    }
    
    return textData;
    
}
@end
