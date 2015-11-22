//
//  NSMutableArray+Shuffle.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/22/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"

@implementation NSMutableArray (Shuffle)

- (void)shuffle {
    NSInteger length = self.count;
    for (int i = 0; i<length; i++) {
        int k = arc4random_uniform(i+1);
        [self exchangeObjectAtIndex:i withObjectAtIndex:k];
    }
}

@end
