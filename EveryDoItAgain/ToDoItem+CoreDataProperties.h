//
//  ToDoItem+CoreDataProperties.h
//  EveryDoItAgain
//
//  Created by Daniel Grosman on 2017-11-22.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//
//

#import "ToDoItem+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDoItem (CoreDataProperties)

+ (NSFetchRequest<ToDoItem *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *created;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *todoDescription;
@property (nonatomic) int16_t priority;
@property (nonatomic) BOOL isCompleted;

@end

NS_ASSUME_NONNULL_END
