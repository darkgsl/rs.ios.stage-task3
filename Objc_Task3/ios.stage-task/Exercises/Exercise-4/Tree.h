//
//  Tree.h
//  ios.stage-task
//
//  Created by Sergey Gomolko on 5/22/21.
//

#import <Foundation/Foundation.h>
#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface Tree : NSObject

@property (nonatomic, strong) Node *root;
@property (nonatomic, strong) NSMutableArray<Node *> *allNodes;

//- (instancetype)initWihArray:(NSArray<NSNumber *> *)numbers;
//- (void)make:(NSArray *)tree;
@end

NS_ASSUME_NONNULL_END
