//
//  main.m
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+Random.h"
#import "SASelection.h"
#import "SAInsertion.h"
#import "SAShellsort.h"
#import "SAMergesort.h"
#import "SAQuicksort.h"

#define TICK   NSDate *startTime = [NSDate date];
#define TOCK   NSLog(@"Time: %f", -[startTime timeIntervalSinceNow])

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSLog(@"%@", randomArray);
//        NSLog(@"%@", [randomArray isSorted] ? @"SORTED" : @"NOT SORTED");
        NSMutableArray *randomArray = [NSMutableArray randomArrayWithLength:1000000];
        NSDate *startTime = [NSDate date];
        for (int i = 0; i<10; i++) {
//            @autoreleasepool {
                TICK;
                [SAQuicksort sort:randomArray];
                TOCK;
//            }
        }
        NSLog(@"Average: %f", -[startTime timeIntervalSinceNow]/10);
//        NSLog(@"%@", randomArray);
//        NSLog(@"%@", [randomArray isSorted] ? @"SORTED" : @"NOT SORTED");
//        NSAssert([randomArray isSorted], @"Not sorted");
    }
    return 0;
}
