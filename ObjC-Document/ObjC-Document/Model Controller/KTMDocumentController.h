//
//  KTMDocumentController.h
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class KTMDocument;

@interface KTMDocumentController : NSObject

@property NSArray *documents;

- (void)createDocumentWithTitle:(NSString *)title
                        docText:(NSString *)docText;

- (void)updateDocument:(KTMDocument *)document
             withTitle:(NSString *)title
               docText:(NSString *)docText;

- (void)removeDocument:(KTMDocument *)document;

@end

NS_ASSUME_NONNULL_END
