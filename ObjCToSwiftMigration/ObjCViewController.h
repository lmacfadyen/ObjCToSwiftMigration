//
//  ObjCViewController.h
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-06-04.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhraseUpdatedDelegate.h"

@interface ObjCViewController : UIViewController

@property (nonatomic, strong) NSString *previousPhrase;
@property (nonatomic, weak) id<PhraseUpdatedDelegate> delegate;



@end
