//
//  ObjCViewController.h
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-06-04.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhraseViewControllerDelegate <NSObject>
@required
- (void)phraseFromController:(NSString *)data;
@end

@interface ObjCViewController : UIViewController

@property (nonatomic, retain) NSString *word;
@property (nonatomic, weak) id<PhraseViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UILabel *oldValue;

@end
