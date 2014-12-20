//
//  MaisOuiViewController.m
//  MaisOui
//
//  Created by Rupan Talwar on 9/11/14.
//  Copyright (c) 2014 Rupan Talwar. All rights reserved.
//

#import "MaisOuiViewController.h"
#import "MaisOuiDictionary.h"

@interface MaisOuiViewController ()
{
    NSArray *_firstPickerData;
    NSArray *_secondPickerData;
    
}

@property (strong,nonatomic) MaisOuiDictionary *dictionary;
@property (weak, nonatomic) IBOutlet UITextField *inWord;
@property (weak, nonatomic) IBOutlet UILabel *outWord;

- (IBAction)translate:(UIButton *)sender;

@end



@implementation MaisOuiViewController


@synthesize inWord = _inWord;
@synthesize outWord = _outWord;
@synthesize dictionary = _dictionary;

int langOneVal=0;
int langTwoVal=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.inWord.delegate=self;
    
    
   _firstPickerData= [[NSArray alloc] initWithObjects:@"",@"English",@"Hindi",@"French",@"Spanish", nil];
    _secondPickerData= [[NSArray alloc] initWithObjects:@"",@"English",@"Hindi",@"French",@"Spanish", nil];
    
    self.firstLanguagePicker.tag = 1;
    self.secondLanguagePicker.tag = 2;
}


// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if(pickerView.tag==1)
    {
        return [_firstPickerData count];
    }
    else
    {
        return [_secondPickerData count];
    }
    
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    if(pickerView.tag == 1)
    {
        return [_firstPickerData objectAtIndex:row];
    }
    
    
    
    else
        return [_secondPickerData objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"tag%ld",(long)pickerView.tag);
    if(pickerView.tag==1)
    {
        switch (row) {
            case 1:
                NSLog(@"English in row:%ld",(long)row);
                langOneVal=1;
                _secondPickerData = @[ @"",@"",@"Hindi",@"French",@"Spanish"]; [self.secondLanguagePicker reloadAllComponents];
                break;
                
            case 2:
                NSLog(@"Hindi in row:%ld",(long)row);
                langOneVal=2;
                _secondPickerData = @[ @"",@"English",@"",@"French",@"Spanish"]; [self.secondLanguagePicker reloadAllComponents];
                break;
                
            case 3:
                NSLog(@"French in row:%ld",(long)row);
                langOneVal=3;
                _secondPickerData = @[ @"",@"English",@"Hindi",@"",@"Spanish",]; [self.secondLanguagePicker reloadAllComponents];
                break;
                
                
            case 4:
                NSLog(@"Spanish in row:%ld",(long)row);
                langOneVal=4;
                _secondPickerData = @[ @"",@"English",@"Hindi",@"French",@"",]; [self.secondLanguagePicker reloadAllComponents];
                break;
                
                
            default:
                _secondPickerData = @[ @"",@"English",@"Hindi",@"French",@"Spanish"]; [self.secondLanguagePicker reloadAllComponents];
                break;
        }
    }
    
    
    
    else
    {
        NSLog(@"row:%ld",(long)row);
        switch (row) {
                NSLog(@"row:%ld",(long)row);
                
            case 2:
                langTwoVal=1;
                NSLog(@"Hindi as second picker");
                break;
                
            case 3:
                langTwoVal=2;
                NSLog(@"French as second picker");
                break;
                
            case 4:
                langTwoVal=3;
                NSLog(@"Spanish as second picker");
                break;
               
            default:
                langTwoVal=0;
                NSLog(@"Default / English as second picker ");
                break;
        }
    }
    
}

- (MaisOuiDictionary *) dictionary
{
    if (!_dictionary)
        _dictionary = [[MaisOuiDictionary alloc] init];
    return _dictionary;
}

- (IBAction)translate:(UIButton *)sender
{
    [self.inWord resignFirstResponder];  // dismisses soft keyboard
    self.outWord.text = [self.dictionary lookup: self.inWord.text.lowercaseString];
    // equivalent to preceding; doesn't use dot notation:
    // [[self outWord] setText: [[self dictionary] lookup: [[self inWord] text]]];
}

// implements UITextFieldDelegate protocol method
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.inWord )
    {
        [textField resignFirstResponder];
        self.outWord.text = [self.dictionary lookup: self.inWord.text.lowercaseString];
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
