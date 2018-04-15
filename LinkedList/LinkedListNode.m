//
//  LinkedListNode.m
//  LinkedList
//
//  Created by Venkata Narasimham Peetla on 4/15/18.
//  Copyright © 2018 PEETLA. All rights reserved.
//

#import "LinkedListNode.h"

@implementation LinkedListNode

- (instancetype)initWithValue:(NSInteger)value {

    if (self = [super init]) {
        self.value = value;
    }

    return self;
}

//Iterative pattern
//Complexity: O(n) time and O(1)O(1) space.
LinkedListNode *PVReverse(LinkedListNode *headOfList) {
    LinkedListNode *currentNode  = headOfList;
    LinkedListNode *previousNode;
    LinkedListNode *nextNode;

    // until we have 'fallen off' the end of the list
    while (currentNode) {
        // copy a pointer to the next element
        // before we overwrite currentNode.next
        nextNode = currentNode.next;

        // reverse the 'next' pointer
        currentNode.next = previousNode;

        // step forward in the list
        previousNode = currentNode;
        currentNode = nextNode;
    }

    return previousNode;
}

+ (LinkedListNode *)reverse:(LinkedListNode *)headOfList {
    LinkedListNode *currentNode  = headOfList;
    LinkedListNode *previousNode;
    LinkedListNode *nextNode;

    // until we have 'fallen off' the end of the list
    while (currentNode) {
        // copy a pointer to the next element
        // before we overwrite currentNode.next
        nextNode = currentNode.next;

        // reverse the 'next' pointer
        currentNode.next = previousNode;

        // step forward in the list
        previousNode = currentNode;
        currentNode = nextNode;
    }

    return previousNode;

}

// Recursive pattern
+ (LinkedListNode *)recursiveReverse:(LinkedListNode *)headOfList {
    LinkedListNode *first;
    LinkedListNode *rest;

    //Empty list
    if (headOfList == NULL) {
        return nil;
    }

    first = headOfList;
    rest = headOfList.next;

    //List has only one node.
    if (rest == NULL) {
        return headOfList;
    }

    /* reverse the rest list and put the first element at the end */
    [self recursiveReverse:rest];
    first.next.next = first;

    /* tricky step -- see the diagram */
    first.next  = NULL;

    /* fix the head pointer */
    headOfList = rest;

    return headOfList;
}

@end
