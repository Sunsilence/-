//
//  EssenceViewController.m
//  百思不得姐
//
//  Created by Silence on 16/11/21.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "EssenceViewController.h"
#import "BDJEssenceModel.h"
#import "EssenceVideoCell.h"

@interface EssenceViewController ()<UITableViewDelegate,UITableViewDataSource>

//表格
@property (nonatomic,strong)UITableView *tabView;
//数据
@property (nonatomic,strong)BDJEssenceModel *model;


@end

@implementation EssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor greenColor];
    
    [self createTableView];
    [self downloadDataListData];
}

-(void)downloadDataListData{
    //http://s.budejie.com/topic/list/jingxuan/41/bs0315-iphone-4.3/0-20.json
    
    NSString *urlString=@"http://s.budejie.com/topic/list/jingxuan/41/bs0315-iphone-4.3/0-20.json";
    
    [BDJDownloader downloadWithUrlString:urlString success:^(NSData *data) {
        //JSON 解析
        
        NSError *error = nil;
        BDJEssenceModel *model=[[BDJEssenceModel alloc] initWithData:data error:&error];
        if (error){
            NSLog(@"%@",error);
        }else{
            
            self.model=model;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tabView reloadData];
            });
            
        }
        
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}

//创建表格
-(void)createTableView{
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.tabView=[[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tabView.delegate=self;
    self.tabView.dataSource=self;
    
    [self.view addSubview:self.tabView];
    
    //约束
    __weak typeof(self) weakSelf = self;
    [self.tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.view).insets(UIEdgeInsetsMake(64, 0, 49, 0));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableView 的代理
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.model.list.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 500;
}
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 0;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BDJEssenceDetail *detail=self.model.list[indexPath.row];
    EssenceVideoCell *cell=[EssenceVideoCell videoCellForTableView:tableView atIndexPath:indexPath withModel:detail];
    
    
    return cell;
}

@end
