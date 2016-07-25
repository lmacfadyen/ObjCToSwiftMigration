//
//  ObjCViewController.m
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-06-04.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

#import "ObjCViewController.h"

@interface ObjCViewController ()

@property (weak, nonatomic) IBOutlet UITextField *updatedPhraseTextField;
@property (weak, nonatomic) IBOutlet UILabel *labelPreviousPhrase;

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labelPreviousPhrase.text = _previousPhrase;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissKeyboard)];
    tap.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap];
    [self setTitle:@"Update From Obj-C"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)passDataBack
{
    [_delegate phraseUpdated:_updatedPhraseTextField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dismissKeyboard {
    [_updatedPhraseTextField resignFirstResponder];
}

- (IBAction)donePressed:(id)sender {
    if(_updatedPhraseTextField.text.length>0)
    {
        [self passDataBack];
    }
}

@end
