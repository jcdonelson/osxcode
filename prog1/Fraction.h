//
//  Fraction.h
//  prog1
//
//  Created by james donelson on 6/1/14.
//  Copyright (c) 2014 james donelson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(double) convertToNum;
-(void)   setTo: (int) n over: (int) d;
-(void) add: (Fraction *) f;
-(void) reduce;
@end
