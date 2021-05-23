#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
  if (!ratingArray || ratingArray.count < 3) {
    return  0;
  }
  
  NSInteger result = 0;
  NSInteger count = ratingArray.count;
  for (NSInteger i = 0; i < count - 2; i += 1){
    for (NSInteger j = i + 1; j < count - 1; j += 1){
      for (NSInteger k = j + 1 ; k < count; k += 1){
        NSUInteger iValue = ratingArray[i].integerValue;
        NSUInteger jValue = ratingArray[j].integerValue;
        NSUInteger kValue = ratingArray[k].integerValue;
        
        if ((iValue > jValue) && (jValue > kValue)){
          result += 1;
          
        } else if ((iValue < jValue) && (jValue < kValue)){
          result += 1;
        }
        
      }
      
    }
    
  }
  
    return result;
}

@end
