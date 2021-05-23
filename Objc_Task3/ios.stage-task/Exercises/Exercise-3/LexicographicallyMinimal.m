#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
  //граничные условия
  if ([string1 length] == 0) {
    return  string2;
  } else if ([string2 length] == 0) {
    return string1;
  }
  
  //NSInteger stringLengthMax = [string1 length] > [string2 length] ? [string1 length] : [string1 length];
  NSMutableString *result = [NSMutableString new];
  
  //NSInteger count = 0;
  NSInteger idx1 = 0;
  NSInteger idx2 = 0;
  while (idx1 < [string1 length] || idx2 < [string2 length]) {
    //for (NSInteger i = 0; i < stringLengthMax; i += 1) {
    char char1 = 'z';
    char char2 = 'z';
    
    //check range
    if (idx1 < [string1 length]  ){
      char1 = [string1 characterAtIndex:idx1];
    }
    if (idx2 < [string2 length]  ){
      char2 = [string2 characterAtIndex:idx2];
    }
    
    if (char1 <= char2) {
      [result appendFormat:@"%C", char1];
      idx1 += 1;
    } else {
      //result insert
      
      [result appendFormat:@"%C", char2];
      idx2 += 1;
    }
    
    
  }
  return result;
  
  /*
   NSMutableString *resultStr = [NSMutableString new];
   NSMutableArray *arrayStr1 = [NSMutableArray new];
   NSMutableArray *arrayStr2 = [NSMutableArray new];
   
   
   //convert String to Array
   for (NSInteger i = [string1 length] - 1; i >= 0 ; i -= 1) {
   //NSString *singleChar = [s substringWithRange:NSMakeRange(i, 1)];
   [arrayStr1 addObject: [NSString stringWithFormat:@"%c", [string1 characterAtIndex:i]]];
   }
   for (NSInteger i = [string2 length] - 1; i >= 0 ; i -= 1) {
   [arrayStr2 addObject: [NSString stringWithFormat:@"%c", [string2 characterAtIndex:i]]];
   }
   
   
   while ((arrayStr1.count != 0) || (arrayStr2.count != 0) ){
   //если один из массивов уже пустой
   if (arrayStr1.lastObject && arrayStr2.lastObject) {
   
   NSComparisonResult comparisonResult = [arrayStr1.lastObject compare:arrayStr2.lastObject];
   
   if (comparisonResult == NSOrderedAscending || comparisonResult == NSOrderedSame) {
   [resultStr appendString:arrayStr1.lastObject];
   [arrayStr1 removeLastObject];
   
   } else if (comparisonResult == NSOrderedDescending) {
   [resultStr appendString:arrayStr2.lastObject];
   [arrayStr2 removeLastObject];
   }
   } else {
   if (arrayStr1.lastObject) {
   // arrayStr1 не нил
   [resultStr appendString:arrayStr1.lastObject];
   [arrayStr1 removeLastObject];
   }
   if (arrayStr2.lastObject) {
   // arrayStr2 не нил
   [resultStr appendString:arrayStr2.lastObject];
   [arrayStr2 removeLastObject];
   }
   }
   }
   return resultStr;
   */
}

@end
