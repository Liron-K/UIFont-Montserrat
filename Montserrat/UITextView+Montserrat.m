//
//  UITextView+Montserrat.m
//  outorah
//
//  Created by Liron Kopinsky on 3/1/15.
//  Copyright (c) 2015 Orthodox Union. All rights reserved.
//

#import "UITextView+Montserrat.h"
#import "UIFont+Montserrat.h"

@implementation UITextView(Montserrat)

-(void)montserrat
{
  self.font = [UIFont montserratForSize:self.font.pointSize];
}
@end

@implementation MontserratTextView

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