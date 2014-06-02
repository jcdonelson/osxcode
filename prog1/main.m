//
//  main.m
//  prog1
//
//  Created by james donelson on 5/31/14.
//  Copyright (c) 2014 james donelson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
//////////////////// Calculator class ////////////////////

@interface Calculator : NSObject
// The the interface methods are declared
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}
-(void) setAccumulator:(double)value;
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}
-(void) subtract: (double) value
{
    accumulator -= value;
}
-(void) multiply: (double) value
{
    accumulator *=  value;
}
-(void) divide: (double) value
{
    if( value == 0.0)
        accumulator = NAN;
    accumulator /= value;
}

@end
void FractionTest(void);
int main(int argc, const char * argv[])
{

    
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        Fraction* myFraction;
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        int n;
        // Using dot notation to access properties.
        myFraction.numerator = 1;
        myFraction.denominator = 5;
        n = myFraction.numerator;
        
        [myFraction setTo: 1 over: 10];
        
        // insert code here...
        NSLog(@"The value of myFraction is:");
        
        [myFraction print];
        // you can do this but you will get an odd warning.
//        myFraction.print;
#if 0
        NSLog( @"Enter expression :");
        scanf("%lf %c %lf",&value1,&operator,&value2);
        [deskCalc setAccumulator: value1];
        if(operator == '+')
            [deskCalc add: value2];
        else if(operator == '-')
            [deskCalc subtract: value2];
        else if(operator == '*')
            [deskCalc multiply: value2];
        else if(operator == '/')
            [deskCalc divide: value2];
        NSLog(@"%.2f",[deskCalc accumulator]);
#endif
        FractionTest();
        
        
    }
    return 0;
}
void FractionTest(void)
{
    @autoreleasepool {
        
    
    Fraction* aFraction = [[Fraction alloc] init];
    Fraction* bFraction = [[Fraction alloc] init];
    
    [aFraction setTo: 1 over: 4];
    [bFraction setTo: 1 over:2];
    
    [aFraction print];
    
    NSLog(@"+");
    [bFraction print];
    NSLog(@"=");
    [aFraction add: bFraction];
    [aFraction print];
    
    }
    
}

    



