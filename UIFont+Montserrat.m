//
//  UIFont+Montserrat.m
//  outorah
//
//  Created by Liron Kopinsky on 3/1/15.
//  Copyright (c) 2015 Orthodox Union. All rights reserved.
//

#import "UIFont+Montserrat.h"

@implementation UIFont(Montserrat)

+(UIFont*)montserratForSize:(CGFloat)size
{
  return [UIFont fontWithName:@"Montserrat-Regular" size:size];
}
+(UIFont*)montserratBoldForSize:(CGFloat)size
{
  return [UIFont fontWithName:@"Montserrat-Bold" size:size];
}
@end
