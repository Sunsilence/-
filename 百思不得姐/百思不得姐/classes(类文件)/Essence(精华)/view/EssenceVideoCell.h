//
//  EssenceVideoCell.h
//  百思不得姐
//
//  Created by Silence on 16/11/22.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BDJEssenceDetail;

@interface EssenceVideoCell : UITableViewCell

//数据
@property (nonatomic,strong)BDJEssenceDetail *detailModel;

//便利的创建 cell 的方法
+(EssenceVideoCell *)videoCellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withModel:(BDJEssenceDetail *)detailModel;

@end
