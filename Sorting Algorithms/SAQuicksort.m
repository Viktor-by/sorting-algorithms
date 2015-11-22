//
//  SAQuicksort.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/22/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "SAQuicksort.h"
#import "NSMutableArray+Shuffle.h"

@implementation SAQuicksort

+ (NSInteger)pivot:(NSMutableArray *)array from:(NSInteger)start to:(NSInteger)end {
    if (end - start > 100) {
        NSInteger gap = (end - start)/3;
        NSInteger median1 = [self medianOfThree:array from:start to:start+gap];
        NSInteger median2 = [self medianOfThree:array from:start+gap+1 to:start+gap+gap];
        NSInteger median3 = [self medianOfThree:array from:start+gap+gap+1 to:end];
        NSInteger ninthen = [self medianOfThree:array start:median1 mid:median2 end:median3];
        [array exchangeObjectAtIndex:start withObjectAtIndex:ninthen];
    } else if (end - start > 30) {
        NSInteger median = [self medianOfThree:array from:start to:end];
        [array exchangeObjectAtIndex:start withObjectAtIndex:median];
    }
    return start;
}

+ (NSInteger)medianOfThree:(NSMutableArray *)array
                      from:(NSInteger)start
                        to:(NSInteger)end {
    NSInteger mid = start + (end - start)/2;
    return [self medianOfThree:array start:start mid:mid end:end];
}

+ (NSInteger)medianOfThree:(NSMutableArray *)array
                     start:(NSInteger)start
                       mid:(NSInteger)mid
                       end:(NSInteger)end {
    
    if (array[start] < array[end]) {
        if (array[start] > array[mid]) {
            return start;
        } else {
            if (array[end] < array[mid]) {
                return end;
            }
            return mid;
        }
    } else {
        if (array[mid] > array[start]) {
            return start;
        } else {
            if (array[mid] < array[end]) {
                return end;
            }
            return mid;
        }
    }
    
    return mid;
}

+ (NSInteger)partition:(NSMutableArray *)array
                  from:(NSInteger)start
                    to:(NSInteger)end {
    NSInteger i = start;
    NSInteger j = end+1;
    NSInteger pivot = [self pivot:array from:start to:end];

    while (1) {
        while (array[++i] < array[pivot]) {
            if (i == end) break;
        }
        
        while (array[pivot] < array[--j]) {
            if (j == start) break;
        }
        
        if (i >= j) break;
        [array exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    
    [array exchangeObjectAtIndex:pivot withObjectAtIndex:j];
    return j;
}

+ (void)sort:(NSMutableArray *)array
        from:(NSInteger)start
          to:(NSInteger)end {
    if (end <= start) return;
    NSInteger p = [self partition:array from:start to:end];
    [self sort:array from:start to:p-1];
    [self sort:array from:p+1 to:end];
}

+ (void)sort:(NSMutableArray *)array {
    if (array.count <= 1) return;
    [array shuffle];
    [self sort:array from:0 to:array.count-1];
}

@end
