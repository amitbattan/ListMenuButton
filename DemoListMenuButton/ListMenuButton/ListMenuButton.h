//
//  ListMenuButton.h
//  Starship
//
//  Created by Amit Battan on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ListMenuDelegate;

@interface ListMenuButton : UIButton <UITableViewDelegate, UITableViewDataSource, UIPopoverControllerDelegate> {
    UITableView *listTable;
    id<ListMenuDelegate> delegate;
    
    UIPopoverController *listPopOver;
    UIViewController* popoverContent;
}
@property (nonatomic, assign) id<ListMenuDelegate> delegate;
@property (readwrite, retain) NSArray *listArray;

@property (readonly) id selectedItem;
@property (readwrite) float listItemHeight;
@property (readwrite) float listWidth;
@property (readwrite) UIPopoverArrowDirection arrowDirection;


@property (readwrite) BOOL updateButtonTitleOnChange;

- (id) initWithList:(NSArray *)list delegate:(id<ListMenuDelegate>)aDelegate;

@end

@protocol ListMenuDelegate<NSObject>
@optional
- (void) listMenu:(ListMenuButton *)listMenu didSelectListItem:(id)selectListItemInfo;
@end