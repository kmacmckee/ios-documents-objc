//
//  KTMDocument.m
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMDocument.h"
#import "NSString+KTMWordCount.h"

@implementation KTMDocument

- (instancetype)initWithTitle:(NSString *)title docText:(NSString *)docText {
    self = [super init];
    
    if (self) {
        _title = title;
        _docText = docText;
    }
    return self;
}


@synthesize wordCount = _wordCount;

- (NSUInteger)wordCount {
    return [[self docText] ktm_wordCount];
}

- (void)setWordCount:(NSUInteger *)wordCount {
    _wordCount = wordCount;
}



@end
