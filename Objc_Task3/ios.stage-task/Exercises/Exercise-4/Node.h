//
//  Node.h
//  ios.stage-task
//
//  Created by Sergey Gomolko on 5/22/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property (nonatomic, strong) NSNumber *number;

@property (nonatomic, strong) Node *left;
@property (nonatomic, strong) Node *right;

+ (instancetype)nodeWithNumber:(NSNumber *)number;
- (instancetype)initWithNumber:(NSNumber *)number;

//- (NSArray<Node *> *)children;

@end

NS_ASSUME_NONNULL_END
