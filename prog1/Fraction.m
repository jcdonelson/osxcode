//
//  Fraction.m
//  prog1
//
//  Created by james donelson on 6/1/14.
//  Copyright (c) 2014 james donelson. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
// you don't need to do this if using properties
// but you can.
{
    int numerator;
    int denominator;
}
@synthesize numerator,denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator, denominator);
}
-(double) convertToNum
{
    if(denominator == 0.0)
        return NAN;
    return (double) numerator/denominator;
}
-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}
-(void) add: (Fraction*) f
{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    [self reduce];
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while( v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
