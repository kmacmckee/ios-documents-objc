//
//  NSString+KTMWordCount.m
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "NSString+KTMWordCount.h"

@implementation NSString (KTMWordCount)


- (NSUInteger)ktm_wordCount {
    
//    NSCharacterSet *seperators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//
//    NSArray *words = [self componentsSeparatedByCharactersInSet:seperators];
//
//    NSMutableArray *wordCount = [[NSMutableArray alloc] init];
//
//    for (NSString *word in words) {
//        NSString *wordOnly = [word stringByTrimmingCharactersInSet:seperators];
//        [wordCount addObject:wordOnly];
//    }
//    return (int)[wordCount count];
    
    
    
    
    
//    NSArray *components = [self componentsSeparatedByString:@" "];
//    NSUInteger count = components.count;
//    return (int)count;
    
    
    return [self componentsSeparatedByString:@" "].count;
    
    
}


@end
