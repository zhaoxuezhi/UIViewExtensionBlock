//
//  UIView+TargetAction.h
//  HLJClient
//
//  Created by xiezi on 16/8/16.
//  Copyright © 2016年 AFu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TouchCallBackBlock)(void);

@interface UIView (TargetAction)

@property (nonatomic, copy) TouchCallBackBlock touchCallBackBlock;

- (void)addActionWithblock:(TouchCallBackBlock)block;

- (void)addTarget:(id)target action:(SEL)action;

@end
