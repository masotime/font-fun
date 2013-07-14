//
//  UITextView_UITextViewWithLineSpacing.h
//  FontSandbox1
//
//  Created by Benjamin Goh on 14/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//
// see http://stackoverflow.com/a/8582422/302266

#import <UIKit/UIKit.h>

@interface UITextView ()
- (id) styleString; // make compiler happy
@end

@interface MBTextView : UITextView
    @property (nonatomic, strong) NSString* lineSpacing;
@end