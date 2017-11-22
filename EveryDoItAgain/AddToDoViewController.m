//
//  AddToDoViewController.m
//  EveryDoItAgain
//
//  Created by Daniel Grosman on 2017-11-22.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "AddToDoViewController.h"
#import "AppDelegate.h"
#import "ToDoItem+CoreDataProperties.h"

@interface AddToDoViewController ()

@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveNewItem:(UIButton *)sender {
    AppDelegate *appDel = (AppDelegate*)[UIApplication sharedApplication].delegate;
    
    ToDoItem *newTodo = [[ToDoItem alloc] initWithContext:appDel.persistentContainer.viewContext];
    newTodo.title = self.titleTextField.text;
    newTodo.todoDescription = self.descriptionTextField.text;
    int priorityInt = [self.priorityTextField.text intValue];
    newTodo.priority = priorityInt;
    newTodo.isCompleted = NO;
    newTodo.created = [[NSDate alloc] init];
    [appDel saveContext];
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}


@end
