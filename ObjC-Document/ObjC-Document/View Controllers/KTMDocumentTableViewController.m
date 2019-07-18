//
//  KTMDocumentTableViewController.m
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMDocumentTableViewController.h"
#import "KTMDocumentViewController.h"
#import "KTMDocumentController.h"
#import "KTMDocument.h"

@interface KTMDocumentTableViewController ()

@end

@implementation KTMDocumentTableViewController

@synthesize documentController = _documentController;
- (KTMDocumentController *)documentController {
    if (!_documentController) {
        _documentController = [[KTMDocumentController alloc] init];

    }
    return _documentController;
}



- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.tableView reloadData];
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    
    KTMDocument *document = self.documentController.documents[indexPath.row];
    cell.textLabel.text = document.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%tu", document.wordCount];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        KTMDocument *document = self.documentController.documents[indexPath.row];
        [self.documentController removeDocument:document];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"NewDocumentSegue"]) {
        KTMDocumentViewController *destinationVC = segue.destinationViewController;
        destinationVC.documentController = self.documentController;
    } else if ([segue.identifier isEqualToString:@"UpdateDocumentSegue"]) {
        KTMDocumentViewController *destinationVC = segue.destinationViewController;
        destinationVC.documentController = self.documentController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        destinationVC.document = self.documentController.documents[indexPath.row];
    }
    
}


@end
