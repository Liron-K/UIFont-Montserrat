//
//  UIButton+Montserrat.m
//  outorah
//
//  Created by Liron Kopinsky on 3/1/15.
//  Copyright (c) 2015 Orthodox Union. All rights reserved.
//

#import "UIButton+Montserrat.h"
#import "UILabel+Montserrat.h"

@implementation UIButton(Montserrat)

-(void)montserrat
{
  [self.titleLabel montserrat];
}

@end

@implementation MontserratButton

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