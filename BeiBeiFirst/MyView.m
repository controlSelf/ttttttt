//
//  MyView.m
//  BeiBeiFirst
//
//  Created by benzhang on 15/9/23.
//  Copyright (c) 2015年 kuyou. All rights reserved.
//

#import "MyView.h"

@interface MyView()

@property (nonatomic, strong) UIImageView *iconImgView;
@property (nonatomic, strong) UILabel *realNameLab;
@property (nonatomic, strong) UILabel *cardIdLab;
@property (nonatomic, strong) UILabel *staticRealNameLab;
@property (nonatomic, strong) UILabel *staticCardIdLab;
@property (nonatomic, strong) UILabel *titleLab;
@end


@implementation MyView


- (id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.iconImgView = [[UIImageView alloc] init];
        [self addSubview:self.iconImgView];
        
        self.titleLab = [[UILabel alloc] init];
        [self addSubview:self.titleLab];
        
        self.staticRealNameLab = [[UILabel alloc] init];
        self.staticRealNameLab.text = @"真实姓名:";
        self.staticRealNameLab.textAlignment = NSTextAlignmentLeft;
        self.staticRealNameLab.textColor = BBOverseaTextColor;
        self.staticRealNameLab.font = [UIFont systemFontOfSize:fontSize];
        [self addSubview:self.staticRealNameLab];
        
        self.realNameLab = [[UILabel alloc] init];
        [self addSubview:self.realNameLab];
        
        self.staticCardIdLab = [[UILabel alloc] init];
        self.staticCardIdLab.text = @"身份证号:";
        self.staticCardIdLab.textAlignment = NSTextAlignmentLeft;
        self.staticCardIdLab.textColor = BBOverseaTextColor;
        self.staticCardIdLab.font = [UIFont systemFontOfSize:fontSize];
        [self addSubview:self.staticCardIdLab];
        
        self.cardIdLab = [[UILabel alloc] init];
        [self addSubview:self.cardIdLab];
        
        [self.iconImgView mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(self.mas_top).offset(20);
            make.left.mas_equalTo(self.mas_left).offset(30);
            make.right.mas_equalTo(self.titleLab.mas_left).offset(-20);
            make.size.mas_equalTo(CGSizeMake(80, 80));
        }];
        
        [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.mas_equalTo(self.mas_top).offset(45);
            make.left.mas_equalTo(self.iconImgView.mas_right).offset(20);
            make.right.mas_equalTo(self.mas_right).offset(15);
            make.height.mas_equalTo(20);
        }];
        
        [self.staticRealNameLab mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.mas_equalTo(self.mas_left).offset(15);
            make.top.mas_equalTo(self.iconImgView.mas_bottom).offset(20);
            make.size.mas_equalTo(CGSizeMake(65, 20));
        }];
        
        [self.realNameLab mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.mas_equalTo(self.staticRealNameLab.mas_right).offset(20);
            make.right.mas_equalTo(self.mas_right).offset(15);
            make.top.mas_equalTo(self.staticRealNameLab.mas_top);
            make.height.mas_equalTo(20);
        }];
        
        [self.staticCardIdLab mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.mas_equalTo(self.mas_left).offset(15);
            make.top.mas_equalTo(self.staticRealNameLab.mas_bottom).offset(20);
            make.size.mas_equalTo(CGSizeMake(65, 20));
        }];
        
        [self.cardIdLab mas_makeConstraints:^(MASConstraintMaker *make){
            make.left.mas_equalTo(self.staticCardIdLab.mas_right).offset(20);
            make.right.mas_equalTo(self.mas_right).offset(15);
            make.top.mas_equalTo(self.staticCardIdLab.mas_top);
            make.height.mas_equalTo(20);
        }];
        
        
    }
    
    return self;
}


-(void) setRealName:(NSString *)realName {
    self.realNameLab.text = realName;
}

-(void) setCardId:(NSString *)cardId {
    self.cardIdLab.text = cardId;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
