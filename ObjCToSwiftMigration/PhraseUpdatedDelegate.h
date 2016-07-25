//
//  PhraseUpdatedDelegate.h
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-07-25.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PhraseUpdatedDelegate <NSObject>

@required
- (void)phraseUpdated:(NSString *)data;

@end
