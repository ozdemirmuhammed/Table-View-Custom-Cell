//
//  TableViewController.m
//  Table View Custom Cell
//
//  Created by Muhammed on 19.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    _imageList=[[NSMutableArray alloc]init];
    _newsList=[[NSMutableArray alloc]init];
    _detailsList=[[NSMutableArray alloc]init];
    
    
    [_imageList addObject:@"haber1.jpg"];
    [_imageList addObject:@"haber2.jpg"];
    [_imageList addObject:@"haber3.jpg"];
    [_imageList addObject:@"haber4.jpg"];
    [_imageList addObject:@"haber5.jpg"];
    [_imageList addObject:@"haber6.jpg"];
    
    
    [_newsList addObject:@"Arda Şampiyon Oldu"];
    [_newsList addObject:@"Google'a Özel Hayat Freni"];
    [_newsList addObject:@"Apple'dan Dev Satın Alma"];
    [_newsList addObject:@"Efsane Ev Satışta"];
    [_newsList addObject:@"Nostaljik Sefer"];
    [_newsList addObject:@"M.United'ın Yeni Teknik Direktörü Nelli Oldu"];
    
    
    [_detailsList addObject:@"Arda Turan'ın forma giydiği Atletico Madrid La Liga Şampiyonu Oldu"];
    [_detailsList addObject:@"Avrupa Adalet Divanı'nın bugün aldığı karar internet arama motorlarına yeni yükümlülükler getiriyor. İnternet arama motorları, talep olması halinde özel hayatı ilgilendiren linkleri kaldırmak zorunda."];
    [_detailsList addObject:@"Apple ses ve müzik ürünleri devi Beats’i 3,2 milyar dolara satın almaya hazırlanıyor."];
    [_detailsList addObject:@"Beyazperdenin klasikleri arasında yer alan 'Scarface’in çekildiği villa satışa çıktı."];
    [_detailsList addObject:@"New Yorkt’ta Manhattan-Queens güzergahında gerçekleşen nostaljik seferler yoğun ilgi gördü."];
    [_detailsList addObject:@"Manchester United Dünya Kupası'ndan sonra takımın başına Louis van Gaal'in geçeceğini açıkladı."];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_newsList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.imgHaber.image=[UIImage imageNamed:[_imageList objectAtIndex:indexPath.row]];
    cell.lblBaslik.text=[_newsList objectAtIndex:indexPath.row];
    cell.lblAciklama.text=[_detailsList objectAtIndex:indexPath.row];
    
    //tarihi yazabilmek için tarihi elde ediyorum.
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MMM dd, yyyy"];
    NSString *dateString = [dateFormat stringFromDate:date];
    
    //tarihi labelıma atıyorum
    cell.lblTarih.text=dateString;


    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 97.0;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
