//
//  ViewController.m
//  SexSelect
//
//  Created by 纵昂 on 2021/4/18.
//

#import "ViewController.h"
#import "ZAChooseSexView.h"

@interface ViewController ()
@property (nonatomic,strong) UILabel  * showLabel; //显示性别
@property (nonatomic,strong) NSString * selectTag; //显示0和1 传给后台

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
#pragma mark - 唉！ 不开心呢
    
    _showLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 100, 30)];
    _showLabel.font = [UIFont systemFontOfSize:20];
    _showLabel.textAlignment = NSTextAlignmentRight;
    _showLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:_showLabel];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    ZAChooseSexView *sheetView = [[ZAChooseSexView alloc]initWithTitle:@"性别修改" buttons:@[@"男",@"女",@"取消"] buttonClick:^(ZAChooseSexView *chooseSexView, NSInteger buttonIndex) {
               
               if (buttonIndex == 0){
 //                  [self.sexBtn setTitle:@"男" forState:UIControlStateNormal];
                   self.showLabel.text = @"男";
                   self.selectTag = @"1";
               }else if (buttonIndex == 1){
 //                  [self.sexBtn setTitle:@"女" forState:UIControlStateNormal];
                   self.showLabel.text = @"女";
                   self.selectTag = @"2";

               }
               
           }];
           [sheetView showView];
    
}
@end
