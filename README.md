ListMenuButton
==============

ipad dropdown menu

Add ListMenuButton.h and ListMenuButton.m in project  

    ListMenuButton *LMBtnChangeTitle = [[ListMenuButton alloc] initWithList:LMBtnChangeTitleListArray delegate:self];

List Array
=========
pass a array to ListMenuButton for listing with following format.  

    NSMutableArray *LMBtnChangeTitleListArray = [[[NSMutableArray alloc] init] autorelease];
    [LMBtnChangeTitleListArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"menu1", @"key", @"Menu 1", @"value", nil]];
    [LMBtnChangeTitleListArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"menu2", @"key", @"Menu 2", @"value", nil]];

ListMenuButtons Property
=====================
    LMBtnChangeTitle.updateButtonTitleOnChange = YES; // YES and NO, change the title of button on selecting from list.
    LMBtnChangeTitle.arrowDirection = UIPopoverArrowDirectionAny;// Menu popover direction.
    LMBtnChangeTitle.listItemHeight = 50; // for setting height of each list items

Delegate Method 
=====================
//Call when select any list item  

    -(void)listMenu:(ListMenuButton *)listMenu didSelectListItem:(id)selectListItemInfo{  
        // Do Some Code
    }

