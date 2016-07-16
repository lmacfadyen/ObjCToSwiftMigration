//
//  ObjCViewController.m
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-06-04.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

#import "ObjCViewController.h"

@interface ObjCViewController ()

@property (weak, nonatomic) IBOutlet UITextField *updatedPhrase;

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _oldValue.text = _word;
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
    if ([_delegate respondsToSelector:@selector(phraseFromController:)])
    {
        [_delegate phraseFromController:_updatedPhrase.text];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dismissKeyboard {
    [_updatedPhrase resignFirstResponder];
}

- (IBAction)donePressed:(id)sender {
    if(_updatedPhrase.text.length>0)
    {
        [self passDataBack];
    }
}

@end
