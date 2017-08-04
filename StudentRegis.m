//
//  StudentRegis.m
//  CIF MESSANGER
//
//  Created by Divjyot Singh on 02/07/15.
//  Copyright (c) 2015 erakabel. All rights reserved.
//

#import "StudentRegis.h"

@interface StudentRegis ()
@property NSArray* stream;

@end

@implementation StudentRegis{
    NSInteger rowSelected;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.streamPicker.hidden=YES;
    self.scroMain.contentOffset=CGPointMake(0, 0);
    self.scroMain.contentSize=CGSizeMake(320, 600);
    
    
    self.stream=@[@"C.S.E",@"E.C.E.",@"Mechnical",@"I.T."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.stream.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.stream[row];  // this will be called multiple times , each time telling what should be in each particular row.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    rowSelected=row;
    
    
    
}

- (IBAction)StreamBtnAction:(id)sender{
    self.streamPicker.hidden=NO;
    
  
    
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3];
    
        self.streamPicker.frame = CGRectMake(0, -100, 320, self.streamPicker.frame.size.height);  // set frame which you want
   
        [UIView commitAnimations];
        
    
    
   
    }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
