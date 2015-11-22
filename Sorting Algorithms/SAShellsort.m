//
//  SAShellsort.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "SAShellsort.h"

@implementation SAShellsort

//Sedgewick's gap sequence
+ (NSMutableArray *)gapsForLength:(NSInteger)length {
    NSMutableArray *gaps = [NSMutableArray array];
    NSInteger g = 1;
    NSInteger k = 1;
    
    [gaps addObject:@(g)];
    while ( k++ < length ) {
        g = pow(4,k) + 3*pow(2,k-1) + 1;
        if (g>=length) break;
        [gaps insertObject:@(g) atIndex:0];
    }
    
    return gaps;
}

+ (void)sort:(NSMutableArray *)array {
    NSArray *sedgewickGaps = [self gapsForLength:array.count];
    for (NSNumber *gap in sedgewickGaps) {
        int g = gap.intValue;
        
        for (int i = g; i<array.count; i+=g) {
            for (int j = i; j >= g; j-=g) {
                if ( array[j-g] > array[j] ) {
                    [array exchangeObjectAtIndex:j-g withObjectAtIndex:j];
                } else {
                    break;
                }
            }
        }
        
    }
}

@end
