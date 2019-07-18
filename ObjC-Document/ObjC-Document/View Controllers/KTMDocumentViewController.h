//
//  KTMDocumentViewController.h
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KTMDocumentController.h"
#import "KTMDocument.h"

NS_ASSUME_NONNULL_BEGIN

@interface KTMDocumentViewController : UIViewController <UITextViewDelegate>

@property KTMDocumentController *documentController;
@property (nonatomic) KTMDocument *document;

- (void)updateViews;
- (void)updateWordCount;
- (void)setDocument:(KTMDocument *)document;




@end

NS_ASSUME_NONNULL_END
