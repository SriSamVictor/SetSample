//
//  main.m
//  SetExample
//
//  Created by Jean Martin on 22/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        SetSample *sSample = [[SetSample alloc]init];
        [sSample setSamp:1 firstName:@"" secondBool:NO];
        [sSample setSamp2:20.0 firstNumber:1 secondNumber:@""];
    }
    return 0;
}
