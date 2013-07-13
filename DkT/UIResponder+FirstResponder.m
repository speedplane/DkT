//
//  UIResponder+FirstResponder.m
//  RECAPp
//
//  Created by Matthew Zorn on 6/22/13.
//  Copyright (c) 2013 Matthew Zorn. All rights reserved.
//

#import "UIResponder+FirstResponder.h"

@implementation UIResponder (FirstResponder)

static __weak id currentFirstResponder;

+(id)currentFirstResponder {
    currentFirstResponder = nil;
    [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    return currentFirstResponder;
}

-(void)findFirstResponder:(id)sender {
    currentFirstResponder = self;
}

@end
