//
//  NSMutableArray+Random.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "NSMutableArray+Random.h"

@implementation NSMutableArray (Random)

+ (instancetype)randomArrayWithLength:(NSUInteger)length {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:length];
    while (length--) {
        [array addObject:@(arc4random())];
    }
    return array;
}

- (BOOL)isSorted {
    for (int i = 1; i<self.count; i++) {
        if (self[i-1] > self[i]) {
            return NO;
        }
    }
    return YES;
}

@end
