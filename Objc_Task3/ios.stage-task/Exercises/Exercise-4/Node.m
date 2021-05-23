//
//  Node.m
//  ios.stage-task
//
//  Created by Sergey Gomolko on 5/22/21.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithNumber:(NSNumber *)number {
    return [[self alloc] initWithNumber:number];
}
- (instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        _number = number ;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Node: (%d) left -> %@ right -> %@", self.number.intValue, self.left.number, self.right.number];
}



@end
