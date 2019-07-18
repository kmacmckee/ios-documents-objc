//
//  KTMDocumentTableViewController.h
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KTMDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface KTMDocumentTableViewController : UITableViewController

@property (nonatomic) KTMDocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
