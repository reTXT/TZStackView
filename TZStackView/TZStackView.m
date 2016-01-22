//
//  TZStackView.m
//  TZStackView
//
//  Created by Kevin Wooten on 10/16/15.
//  Copyright © 2015 Tom van Zummeren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

#pragma mark - Runtime Injection

// ----------------------------------------------------
// Runtime injection start.
// Injection codes below are based on:
// https://github.com/oarrabi/OAStackView/blob/master/Pod/Classes/OAStackView.m
// ----------------------------------------------------

// Constructors are called after all classes have been loaded.
__attribute__((constructor)) static void TZStackViewPatchEntry(void) {
    
    if (objc_getClass("UIStackView")) {
        return;
    }
    
    if (!objc_getClass("TZStackView")) {
        return;
    }
    
    Class class = objc_allocateClassPair(objc_getClass("TZStackView"), "UIStackView", 0);
    
    if (class) {
        objc_registerClassPair(class);
    }
}
