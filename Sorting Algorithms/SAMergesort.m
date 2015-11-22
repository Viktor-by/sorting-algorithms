//
//  SAMergesort.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import "SAMergesort.h"
#import "NSMutableArray+Shuffle.h"

@implementation SAMergesort

+ (void)merge:(NSMutableArray *)array
    workArray:(NSMutableArray *)workArray
         from:(NSInteger)start
           to:(NSInteger)end
       middle:(NSInteger)mid {
    
    for (NSInteger i=start; i<=end; i++) {
        workArray[i] = array[i];
    }
    
    for (NSInteger k = start, i = start, j = mid+1; k<=end; k++) {
        if (i > mid) { // If all elements from the left half are moved
            array[k] = workArray[j++]; // move all elements from the right half
        } else if (j > end) { // If all elements from the right half are moved
            array[k] = workArray[i++]; // move all elements from the left half
        } else if (workArray[j] < workArray[i]) {
            array[k] = workArray[j++];
        } else {
            array[k] = workArray[i++];
        }
    }
}

+ (void)sort:(NSMutableArray *)array
   workArray:(NSMutableArray *)workArray
        from:(NSInteger)start
          to:(NSInteger)end {
    
    if (end <= start) return;
    
    NSInteger mid = start + (end - start)/2;
    [self sort:array workArray:workArray from:start to:mid]; // Sort left half
    [self sort:array workArray:workArray from:mid+1 to:end]; // Sort right half
    [self merge:array workArray:workArray from:start to:end middle:mid]; // Merge the sorted halves
}

+ (void)sort:(NSMutableArray *)array {
    NSInteger length = array.count;
    if (length <=1) return;
    NSMutableArray *workArray = [NSMutableArray arrayWithCapacity:length];
    [self sort:array workArray:workArray from:0 to:length-1];
}

@end
