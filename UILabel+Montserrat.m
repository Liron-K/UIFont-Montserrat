//
//  UILabel+Montserrat.m
//  outorah
//
//  Created by Liron Kopinsky on 3/1/15.
//  Copyright (c) 2015 Orthodox Union. All rights reserved.
//

#import "UILabel+Montserrat.h"
#import "UIFont+Montserrat.h"

@implementation UILabel(Montserrat)

-(void)montserrat
{
  NSString* fontName = self.font.fontName;
  
  UIFontDescriptor *fontDescriptor = self.font.fontDescriptor;
  UIFontDescriptorSymbolicTraits fontDescriptorSymbolicTraits = fontDescriptor.symbolicTraits;
  BOOL isBold = (fontDescriptorSymbolicTraits & UIFontDescriptorTraitBold);
  if(isBold || [fontName.lowercaseString containsString:@"bold"])
  {
    [self montserratBold];
  }
  else
  {
    [self montserratRegular];
  }
}
-(void)montserratRegular
{
  self.font = [UIFont montserratForSize:self.font.pointSize];
}
-(void)montserratBold
{
  self.font = [UIFont montserratBoldForSize:self.font.pointSize];
}
@end

@implementation MontserratLabel

-(id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if(!self)
    return nil;
  [self montserrat];
  
  return self;
}

-(id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if(!self)
    return nil;
  
  [self montserrat];
  
  return self;
}

@end
@implementation MontserratBoldLabel

-(id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if(!self)
    return nil;
  [self montserratBold];
  
  return self;
}

-(id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if(!self)
    return nil;
  
  [self montserratBold];
  
  return self;
}

@end