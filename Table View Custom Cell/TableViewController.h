//
//  TableViewController.h
//  Table View Custom Cell
//
//  Created by Muhammed on 19.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"

@interface TableViewController : UITableViewController
@property (atomic)  NSMutableArray *imageList;
@property (atomic)  NSMutableArray *newsList;
@property (atomic)  NSMutableArray *detailsList;


@end
