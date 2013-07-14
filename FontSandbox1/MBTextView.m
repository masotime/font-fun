//
//  MBTextView.m
//  FontSandbox1
//
//  Created by Benjamin Goh on 14/7/13.
//  Copyright (c) 2013 Benjamin Goh. All rights reserved.
//

#import "MBTextView.h"

@implementation MBTextView

NSString* _lineSpacing;

- (NSString*) lineSpacing {
  if (!_lineSpacing) {
    _lineSpacing = @"1.4em";
  }
  return _lineSpacing;
}

- (void) setLineSpacing:(NSString *)lineSpacing {
  _lineSpacing = lineSpacing;
  NSLog(@"setLineSpacing = %@", lineSpacing);
}

-(void)awakeFromNib
{
    [super awakeFromNib]; // Don't forget to call super

    NSLog(@"awakeFromNib");
}

- (id)styleString {
    NSLog(@"styleString is being set with lineSpacing = %@", self.lineSpacing);
    
    NSString* lineHeightString = [NSString stringWithFormat:@"line-height: %@; font-family: 'HelveticaNeue'; text-align: justify;", self.lineSpacing];
    return [[super styleString] stringByAppendingString:lineHeightString];
}
@end