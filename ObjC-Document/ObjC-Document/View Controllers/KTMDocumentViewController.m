//
//  KTMDocumentViewController.m
//  ObjC-Document
//
//  Created by Kobe McKee on 7/17/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

#import "KTMDocumentViewController.h"
#import "KTMDocumentController.h"
#import "KTMDocument.h"
#import "NSString+KTMWordCount.h"


@interface KTMDocumentViewController ()
@property (weak, nonatomic) IBOutlet UILabel *wordCountLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *docTextView;
@end



@implementation KTMDocumentViewController

- (void)setDocument:(KTMDocument *)document {
    if (document != _document) {
        _document = document;
        [self updateViews];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    [self setUpTextView];
    [[self docTextView] setDelegate:self];
}

- (void)setUpTextView {
    self.docTextView.layer.cornerRadius = 6;
    self.docTextView.layer.borderColor = UIColor.blackColor.CGColor;
    self.docTextView.layer.borderWidth = 0.2;
}


- (void)updateViews {
    if (!self.document) { return; }
    self.title = self.document.title;
    self.titleTextField.text = self.document.title;
    self.docTextView.text = self.document.docText;
    self.wordCountLabel.text = [NSString stringWithFormat:@"%lu words", (unsigned long)self.document.docText.ktm_wordCount];
}


- (void)updateWordCount {
    if ([self.docTextView.text isEqualToString:@""]) {
        self.wordCountLabel.text = @"0 words";
    } else {
        self.wordCountLabel.text = [NSString stringWithFormat:@"%lu words", (unsigned long)self.docTextView.text.ktm_wordCount];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    [self updateWordCount];
}




- (IBAction)saveButtonPressed:(id)sender {
    NSString *title = self.titleTextField.text;
    NSString *docText = self.docTextView.text;
    
    if (!self.document) {
        [self.documentController createDocumentWithTitle:title docText:docText];
    } else {
        [self.documentController updateDocument:self.document withTitle:title docText:docText];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}




@end
