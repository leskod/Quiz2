//
//  QuizViewController.m
//  Quiz2
//
//  Created by Lesko, Dereck on 1/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //call the init implemented by the superclass
    //self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        //create 2 arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add data to the arrays
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
    }
    
    //return the address of the new object
    //return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showQuestion:(id)sender
{
    
    NSLog(@"In showQuestion");
    [self.lblQuestion setText:@"What is 7+7?"];
    
    
    //step to the next question
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count])
    {
        currentQuestionIndex = 0;
    }
    
    //get the string at the index in the question array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //log the string tothe console
    NSLog(@"displaying question: %@", question);
    
    //display the string in the question field
    [self.lblQuestion setText:question];
    
    //clear the answer field
    [self.lblAnswer setText:@"???"];
    

}



- (IBAction)showAnswer:(id)sender
{
    
    NSLog(@"In showAnswer");
    [self.lblAnswer setText:@"14?"];
    
    
    //what is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //display it
    [self.lblAnswer setText:answer];
}




@end
