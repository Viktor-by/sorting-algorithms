//
//  SAInsertion.h
//  Sorting Algorithms
//
//  Created by Viktor Starovoitov on 11/21/15.
//  Copyright © 2015 Viktor Starovoitov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SAInsertion : NSObject

+ (void)sort:(NSMutableArray *)array;
+ (void)sort:(NSMutableArray *)array from:(NSInteger)start to:(NSInteger)end;

@end
