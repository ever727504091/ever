//
//  HomeTableViewController.m
//  ChinaMobile
//
//  Created by tarena on 16/5/10.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "HomeTableViewController.h"

@interface HomeTableViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) NSMutableArray *imageViewArray;

@end

@implementation HomeTableViewController
- (NSMutableArray *)imageViewArray {
    if (!_imageViewArray) {
        _imageViewArray = [[NSMutableArray alloc] init];
    }
    return _imageViewArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.title = @"首页";
   
    CGRect frame = self.scrollView.bounds;
    self.scrollView.contentSize = CGSizeMake(frame.size.width * 7, frame.size.height);
    for (int i = 0; i < 7; i++) {
        frame.origin.x = frame.size.width * i;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        NSString *imageName = [NSString stringWithFormat:@"image%d",i];
        imageView.image = [UIImage imageNamed:imageName];
        [self.imageViewArray addObject:imageView];
        [self.scrollView addSubview:imageView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
