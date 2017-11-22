//
//  ToDoItem+CoreDataProperties.m
//  EveryDoItAgain
//
//  Created by Daniel Grosman on 2017-11-22.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//
//

#import "ToDoItem+CoreDataProperties.h"

@implementation ToDoItem (CoreDataProperties)

+ (NSFetchRequest<ToDoItem *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ToDoItem"];
}

@dynamic created;
@dynamic title;
@dynamic todoDescription;
@dynamic priority;
@dynamic isCompleted;

@end
