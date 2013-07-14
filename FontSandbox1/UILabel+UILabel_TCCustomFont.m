//
//  UILabel+UILabel_TCCustomFont.m
//  FontSandbox1
//
//  Created by Benjamin Goh on 13/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//
// see http://stackoverflow.com/questions/9090745/custom-font-in-a-storyboard

#import "UILabel+UILabel_TCCustomFont.h"

@implementation UILabel (TCCustomFont)

// so internally it is a UI Font
- (NSString *)fontName {
    return self.font.fontName;
}

- (void)setFontName:(NSString *)fontName {
    self.font = [UIFont fontWithName:fontName size:self.font.pointSize];
}

@end
