//
//  KTMDocument.h
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KTMDocument : NSObject

@property NSString *title;
@property NSString *docText;
@property NSUInteger *wordCount;


- (instancetype)initWithTitle:(NSString *)title
                      docText:(NSString *)docText;


@end

NS_ASSUME_NONNULL_END
