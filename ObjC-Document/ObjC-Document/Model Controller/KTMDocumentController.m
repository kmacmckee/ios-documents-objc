//
//  KTMDocumentController.m
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMDocumentController.h"
#import "KTMDocument.h"

@interface KTMDocumentController ()
@property NSMutableArray *internalDocuments;
@end


@implementation KTMDocumentController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalDocuments = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createDocumentWithTitle:(NSString *)title
                        docText:(NSString *)docText {
    
    KTMDocument *document = [[KTMDocument alloc] initWithTitle:title docText:docText];
    [self.internalDocuments addObject:document];
}

- (void)removeDocument:(KTMDocument *)document {
    [self.internalDocuments removeObject:document];
}

- (void)updateDocument:(KTMDocument *)document
             withTitle:(NSString *)title
               docText:(NSString *)docText {
    
    document.title = title;
    document.docText = docText;
}

- (NSArray *)documentsArray {
    return self.internalDocuments;
}


@end
