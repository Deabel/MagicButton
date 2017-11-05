//
//  MagicButton.m
//  MagicButton
//
//  Created by Manon on 2017/11/5.
//  Copyright © 2017年 Manon. All rights reserved.
//

#define width self.frame.size.width
#define height self.frame.size.height
#import "MagicButton.h"

@interface MagicButton ()

@end

static CGFloat lineWidth = 50.f;
static CGFloat lineHeight = 8.f;
static CGFloat lineSpace = 10.f;
@implementation MagicButton

- (void)drawRect:(CGRect)rect {
    
    CGFloat topMargin = (height - lineHeight * 3 - lineSpace * 2)/2;
    CGFloat leftMargin = (width - lineWidth) / 2.0;
    UIColor *lineColor = [UIColor whiteColor];
    // first line
//    UIBezierPath *firstPath = [UIBezierPath bezierPath];
//    [firstPath moveToPoint:CGPointMake(margin, margin)];
//    [firstPath addLineToPoint:CGPointMake(width - margin * 2, margin)];
//    firstPath.lineWidth = lineWidth;
//    firstPath.lineCapStyle = kCGLineCapRound;
    
    CAShapeLayer *firstLine = [CAShapeLayer layer];
    firstLine.frame = CGRectMake(leftMargin, topMargin, lineWidth, lineHeight);
    firstLine.backgroundColor = lineColor.CGColor;
    firstLine.cornerRadius = 5.f;
    [self.layer addSublayer:firstLine];
    
    CAShapeLayer *secondLine = [CAShapeLayer layer];
    secondLine.frame = CGRectMake(leftMargin, topMargin + lineHeight + lineSpace, lineWidth, lineHeight);
    secondLine.backgroundColor = lineColor.CGColor;
    secondLine.cornerRadius = 5.f;
    [self.layer addSublayer:secondLine];
    
    CAShapeLayer *thirdLine = [CAShapeLayer layer];
    thirdLine.frame = CGRectMake(leftMargin, (lineSpace + lineHeight) * 2 + topMargin, lineWidth, lineHeight);
    thirdLine.backgroundColor = lineColor.CGColor;
    thirdLine.cornerRadius = 5.f;
    [self.layer addSublayer:thirdLine];
}

@end
