//
//  LinkedListNode.h
//  LinkedList
//
//  Created by Venkata Narasimham Peetla on 4/15/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedListNode : NSObject

@property (nonatomic) NSInteger value;
@property (nonatomic) LinkedListNode *next;

- (instancetype)initWithValue:(NSInteger)value;

+ (LinkedListNode *)reverse:(LinkedListNode *)headOfList;

@end
