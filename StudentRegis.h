//
//  StudentRegis.h
//  CIF MESSANGER
//
//  Created by Divjyot Singh on 02/07/15.
//  Copyright (c) 2015 erakabel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentRegis : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property NSString* streamPickerSelection;
@property (weak, nonatomic) IBOutlet UIPickerView *streamPicker;

//@property (weak, nonatomic) IBOutlet UIButton *streamBtnOutlet;
- (IBAction)StreamBtnAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *scroMain;

@property (weak, nonatomic) IBOutlet UIView *pickerView;

@end
