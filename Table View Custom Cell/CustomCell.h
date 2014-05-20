//
//  TableViewCell.h
//  Table View Custom Cell
//
//  Created by Muhammed on 19.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgHaber;
@property (weak, nonatomic) IBOutlet UILabel *lblBaslik;
@property (weak, nonatomic) IBOutlet UILabel *lblAciklama;
@property (weak, nonatomic) IBOutlet UILabel *lblTarih;
@property (weak, nonatomic) IBOutlet UIImageView *lblAccessoryIcon;

@end
