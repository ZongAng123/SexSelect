//
//  ZAChooseSexView.h
//  SexSelect
//
//  Created by 纵昂 on 2021/4/18.
//  微信号: ZaNanJing2020
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZAChooseSexView : UIView

@property (nonatomic, copy) void(^buttonClick)(ZAChooseSexView *chooseSexView,NSInteger buttonIndex);

/**
 Description

 @param title 弹出框标题
 @param buttons 按钮列表
 @param block 选择项
 @return self
 */
- (id)initWithTitle:(NSString *)title buttons:(NSArray <NSString *>*)buttons buttonClick:(void(^)(ZAChooseSexView *chooseSexView,NSInteger buttonIndex))block;


/**
 显示弹出框
 */
- (void)showView;

@end

NS_ASSUME_NONNULL_END
