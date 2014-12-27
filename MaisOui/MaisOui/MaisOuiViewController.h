//
//  MaisOuiViewController.h
//  MaisOui
//
//  Created by Rupan Talwar on 9/11/14.
//  Copyright (c) 2014 Rupan Talwar. All rights reserved.//

#import <UIKit/UIKit.h>


@interface MaisOuiViewController : UIViewController <UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
{
    NSMutableArray *array_1;
    NSMutableArray *array_2;
}
@property (weak, nonatomic) IBOutlet UIPickerView *firstLanguagePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *secondLanguagePicker;


@end
