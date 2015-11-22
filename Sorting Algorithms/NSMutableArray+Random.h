//
//  NSMutableArray+Random.h
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Random)

+ (instancetype)randomArrayWithLength:(NSUInteger)length;
- (BOOL)isSorted;

@end
