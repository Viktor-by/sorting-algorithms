//
//  SASelection.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "SASelection.h"

@implementation SASelection

+ (void)sort:(NSMutableArray *)array {
    for (int i = 0; i<array.count; i++) {
        int min = i;
        for (int j = i+1; j<array.count; j++) {
            if (array[j] < array[min]) {
                min = j;
            }
        }
        [array exchangeObjectAtIndex:i withObjectAtIndex:min];
    }
}

@end
