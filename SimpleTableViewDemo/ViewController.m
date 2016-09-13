//
//  ViewController.m
//  SimpleTableViewDemo
//
//  Created by Arjun Hanswal on 9/13/16.
//  Copyright © 2016 Com.TableViewDemo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
NSArray *tableData;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableData=[NSArray arrayWithObjects:@"Hello",@"Test",@"Table view", nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return tableData.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

   static NSString *identifer=@"Cell";
   
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    cell.textLabel.text=tableData[indexPath.row];
    return cell;
}
@end
