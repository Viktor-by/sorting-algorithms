//
//  SAInsertion.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "SAInsertion.h"

@implementation SAInsertion

+ (void)sort:(NSMutableArray *)array {
    for (int i = 0; i<array.count; i++) {
        for (int j = i; j>0; j--) {
            if (array[j] < array[j-1]) {
                [array exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
            } else {
                break;
            }
        }
    }
}

@end
