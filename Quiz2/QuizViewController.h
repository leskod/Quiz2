//
//  QuizViewController.h
//  Quiz2
//
//  Created by Lesko, Dereck on 1/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    //QUESTION:  WHY ARE THESE IN BRACES?
    int currentQuestionIndex;

    //the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    
    //QUESTION:  THIS IS THE BOOK SYNTAX, WHAT MAKES THESE DIFFERENT?
    //the view objects - don't worry about iboutlet
    //IBOutlet UILabel *questionField;
    //IBOutlet UILabel *answerField;
}



@property (weak, nonatomic) IBOutlet UILabel *lblQuestion;
@property (weak, nonatomic) IBOutlet UILabel *lblAnswer;


- (IBAction)showAnswer:(id)sender;
- (IBAction)showQuestion:(id)sender;

@end
