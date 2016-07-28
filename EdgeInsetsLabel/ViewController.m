//
//  ViewController.m
//  EdgeInsetsLabel
//
//  Created by 王巧 on 16/6/29.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "EdgeInsetsLabel.h"

@interface ViewController ()

@property (nonatomic, strong) EdgeInsetsLabel * textlabel;
@property (nonatomic, strong) UILabel         * normalLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    // 自定义的label -- EdgeInsetsLabel
    self.textlabel                   = [[EdgeInsetsLabel alloc] initWithFrame:CGRectMake(10, 44, self.view.frame.size.width - 20,100)];
    self.textlabel.backgroundColor   = [UIColor orangeColor];
    self.textlabel.font              = [UIFont boldSystemFontOfSize:13];
    self.textlabel.textColor         = [UIColor blueColor];
    self.textlabel.layer.borderWidth = 1;
    self.textlabel.numberOfLines     = 0;
    
    //设置的label的高度没什么影响,不论多高多低, 左右边距都是按照  edgeInsets  的值来算
    self.textlabel.edgeInsets        = UIEdgeInsetsMake(50, 10, 30, 100); //上 左 下 右
    
    self.textlabel.text = @"自定义label:       戌楼响过更鼓/路上断了行人形影/秋天的边境/传来孤雁悲切的鸣声/今日正是白露/忽然想起远方兄弟/望月怀思/觉得故乡月儿更圆更明.可怜有兄弟/却各自东西海角天涯/有家若无/是死是生我何处去打听/平时寄去书信/常常总是无法到达/更何况烽火连天/叛乱还没有治平可怜有兄弟. ";
    //sizeToFit 会根据字体调节label的大小
    [self.textlabel sizeToFit];
    [self.view addSubview:self.textlabel];
    
    
    
    // 系统自带的label -- UIlabel
    self.normalLabel                   = [[UILabel alloc] initWithFrame:CGRectMake(10, 300, self.view.frame.size.width - 20, 150)];
    self.normalLabel.backgroundColor   = [UIColor yellowColor];
    self.normalLabel.font              = [UIFont boldSystemFontOfSize:13];
    self.normalLabel.textColor         = [UIColor blackColor];
     self.normalLabel.layer.borderWidth = 1;
    self.normalLabel.numberOfLines     = 0;
   
    self.normalLabel.text = @"系统自带label:     戌楼响过更鼓/路上断了行人形影/秋天的边境/传来孤雁悲切的鸣声/今日正是白露/忽然想起远方兄弟/望月怀思/觉得故乡月儿更圆更明.可怜有兄弟/却各自东西海角天涯/有家若无/是死是生我何处去打听/平时寄去书信/常常总是无法到达/更何况烽火连天/叛乱还没有治平可怜有兄弟.";
    [self.normalLabel sizeToFit];
    [self.view addSubview:self.normalLabel];
    


    
    
   
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
