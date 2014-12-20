//
//  MaisOuiDictionary.m
//  MaisOui
//
//  Created by Rupan Talwar on 9/11/14.
//  Copyright (c) 2014 Rupan Talwar. All rights reserved.
//

#import "MaisOuiDictionary.h"

@interface MaisOuiDictionary()
@property (strong,nonatomic,readonly) NSDictionary *EnglishToFrench;
@property (strong,nonatomic,readonly) NSDictionary *EnglishToHindi;
@property (strong,nonatomic,readonly) NSDictionary *EnglishToSpanish;
@property (strong,nonatomic,readonly) NSDictionary *FrenchToEnglish;
@property (strong,nonatomic,readonly) NSDictionary *FrenchToHindi;
@property (strong,nonatomic,readonly) NSDictionary *FrenchToSpanish;
@property (strong,nonatomic,readonly) NSDictionary *HindiToEnglish;
@property (strong,nonatomic,readonly) NSDictionary *HindiToFrench;
@property (strong,nonatomic,readonly) NSDictionary *HindiToSpanish;
@property (strong,nonatomic,readonly) NSDictionary *SpanishToEnglish;
@property (strong,nonatomic,readonly) NSDictionary *SpanishToHindi;
@property (strong,nonatomic,readonly) NSDictionary *SpanishToFrench;

@end

@implementation MaisOuiDictionary

@synthesize EnglishToFrench = _EnglishToFrench;
@synthesize EnglishToHindi=_EnglishToHindi;
@synthesize EnglishToSpanish=_EnglishToSpanish;
@synthesize FrenchToEnglish=_FrenchToEnglish;
@synthesize FrenchToHindi=_FrenchToHindi;
@synthesize FrenchToSpanish=_FrenchToSpanish;
@synthesize HindiToFrench=_HindiToFrench;
@synthesize HindiToEnglish=_HindiToEnglish;
@synthesize HindiToSpanish=_HindiToSpanish;
@synthesize SpanishToEnglish=_SpanishToEnglish;
@synthesize SpanishToFrench=_SpanishToFrench;
@synthesize SpanishToHindi=_SpanishToHindi;



- (NSDictionary *) EnglishToFrench
{
    if (!_EnglishToFrench) {
        _EnglishToFrench = [NSDictionary dictionaryWithObjectsAndKeys:
                  @"tableau noir", @"blackboard",
                  @"zut", @"damn",
                  @"chien", @"dog",
                  @"triste", @"sad",
                  @"heureux", @"happy",
                  nil];
        
    }
    return _EnglishToFrench;
}


- (NSDictionary *) EnglishToHindi
{
    if (!_EnglishToHindi) {
        _EnglishToHindi = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"shyampath", @"blackboard",
                           @"laanat hay", @"damn",
                           @"kutta", @"dog",
                           @"dukhi", @"sad",
                           @"khush", @"happy",
                           nil];
        
    }
    return _EnglishToHindi;
}


- (NSDictionary *) EnglishToSpanish
{
    if (!_EnglishToSpanish) {
        _EnglishToSpanish = [NSDictionary dictionaryWithObjectsAndKeys:
                           @"pizarra", @"blackboard",
                           @"maldita", @"damn",
                           @"perro", @"dog",
                           @"ahora", @"sad",
                           @"feliz", @"happy",
                           nil];
        
    }
    return _EnglishToSpanish;
}

- (NSDictionary *) FrenchToEnglish
{
    if (!_FrenchToEnglish) {
        _FrenchToEnglish = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"blackboard",@"tableau noir",
                            @"damn",@"zut",
                             @"dog",@"chien",
                             @"sad",@"triste",
                             @"happy",@"heureux",
                            nil];
        
    }
    return _FrenchToEnglish;
}

- (NSDictionary *) FrenchToHindi
{
    if (!_FrenchToHindi) {
        _FrenchToHindi = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"shyampath", @"tableau noir",
                          @"laanat hay",@"zut",
                          @"kutta",@"chien",
                          @"dukhi",@"triste",
                          @"khush",@"heureux",
                          nil];
        
    }
    return _FrenchToHindi;
}

- (NSDictionary *) FrenchToSpanish
{
    if (!_FrenchToSpanish) {
        _FrenchToSpanish = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"pizarra", @"tableau noir",
                            @"maldita",@"zut",
                            @"perro",@"chien",
                            @"ahora",@"triste",
                            @"feliz",@"heureux",
                            nil];
        
    }
    return _FrenchToHindi;
}



- (NSDictionary *) HindiToEnglish
{
    if (!_HindiToEnglish) {
        _HindiToEnglish = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"blackboard",@"shyampath",
                            @"damn",@"laanat hay",
                             @"dog",@"kutta",
                             @"sad",@"dukhi",
                             @"happy",@"khush",
                            nil];
        
    }
    return _HindiToEnglish;
}


- (NSDictionary *) HindiToFrench
{
    if (!_HindiToFrench) {
        _HindiToFrench = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"tableau noir", @"shyampath",
                            @"zut", @"laanat hay",
                            @"chien", @"kutta",
                            @"triste", @"dukhi",
                            @"heureux", @"khush",
                            nil];
        
    }
    return _HindiToFrench;
}


- (NSDictionary *) HindiToSpanish
{
    if (!_HindiToSpanish) {
        _HindiToSpanish = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"pizarra", @"shyampath",
                          @"maldita", @"laanat hay",
                          @"perro", @"kutta",
                          @"ahora", @"dukhi",
                          @"feliz", @"khush",
                          nil];
        
    }
    return _HindiToSpanish;
}

- (NSDictionary *) SpanishToEnglish
{
    if(!_SpanishToEnglish)
    {
        _SpanishToEnglish= [NSDictionary dictionaryWithObjectsAndKeys:
                            @"blackboard", @"pizarra",
                            @"damn",@"maldita",
                            @"dog",@"perro",
                            @"sad",@"ahora",
                            @"happy",@"feliz",
                            nil];
    }
    return _SpanishToEnglish;
}

- (NSDictionary *) SpanishToHindi
{
    if(!_SpanishToHindi)
    {
        _SpanishToHindi= [NSDictionary dictionaryWithObjectsAndKeys:
                            @"shyampath", @"pizarra",
                            @"laanat hay",@"maldita",
                            @"kutta",@"perro",
                            @"dukhi",@"ahora",
                            @"khush",@"feliz",
                            nil];
    }
    return _SpanishToHindi;
}

- (NSDictionary *) SpanishToFrench
{
    if(!_SpanishToFrench)
    {
        _SpanishToFrench= [NSDictionary dictionaryWithObjectsAndKeys:
                            @"tableau noir", @"pizarra",
                            @"zut",@"maldita",
                            @"chien",@"perro",
                            @"triste",@"ahora",
                            @"heureux",@"feliz",
                            nil];
    }
    return _SpanishToFrench;
}




int langOneVal;

- (void) initDictionaryOne : (int) value
{
    
    langOneVal=value;
}

int langTwoVal;

- (void) initDictionaryTwo : (int ) value1
{
    
    langTwoVal=value1;
}


- (NSString *) lookup: (NSString *)in
{
    
    if(langOneVal==1 && langTwoVal==1)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv1 = [self.EnglishToHindi objectForKey: in];
        if ( !rv1 )
            return @"*** input not english word ***";
        
        return rv1;
    }
    
    if(langOneVal==1 && langTwoVal==2)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv2 = [self.EnglishToFrench objectForKey: in];
        if ( !rv2 )
            return @"*** input not english word ***";
        
        return rv2;
    }
    
    if(langOneVal==1 && langTwoVal==3)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv7 = [self.EnglishToSpanish objectForKey: in];
        if ( !rv7 )
            return @"*** input not english word ***";
        
        return rv7;
    }
    
    
    
    if(langOneVal==2 && langTwoVal==0)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv3 = [self.HindiToEnglish objectForKey: in];
        if ( !rv3 )
            return @"*** input not hindi word ***";
        
        return rv3;
    }
    
    if(langOneVal==2 && langTwoVal==2)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv4 = [self.HindiToFrench objectForKey: in];
        if ( !rv4 )
            return @"*** input not hindi word ***";
        
        return rv4;
    }
    
    if(langOneVal==2 && langTwoVal==3)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv8 = [self.HindiToSpanish objectForKey: in];
        if ( !rv8 )
            return @"*** input not hindi word ***";
        
        return rv8;
    }
    
    
    
    if(langOneVal==3 && langTwoVal==0)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv5 = [self.FrenchToEnglish objectForKey: in];
        if ( !rv5 )
            return @"*** input not french word ***";
        
        return rv5;
    }
    
    if(langOneVal==3 && langTwoVal==1)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv6 = [self.FrenchToHindi objectForKey: in];
        if ( !rv6 )
            return @"*** input not french word ***";
        
        return rv6;
    }
    
    if(langOneVal==3 && langTwoVal==3)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv9 = [self.FrenchToSpanish objectForKey: in];
        if ( !rv9 )
            return @"*** input not french word ***";
        
        return rv9;
    }
    
    if(langOneVal==4 && langTwoVal==0)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv10 = [self.SpanishToEnglish objectForKey: in];
        if ( !rv10 )
            return @"*** input not Spanish word ***";
        
        return rv10;
    }

    if(langOneVal==4 && langTwoVal==1)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv11 = [self.SpanishToHindi objectForKey: in];
        if ( !rv11 )
            return @"*** input not Spanish word ***";
        
        return rv11;
    }

    if(langOneVal==4 && langTwoVal==2)
    {
        NSLog(@"Value of langOneVal: %d   langTwoVal: %d \n\n",langOneVal,langTwoVal);
        NSString *rv12 = [self.SpanishToFrench objectForKey: in];
        if ( !rv12 )
            return @"*** input not Spanish word ***";
        
        return rv12;
    }

    
    
    return @"**Please Select languages**";
    
    
}

@end
