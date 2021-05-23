#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
  if (monthNumber < 1 && monthNumber > 12) {
    return nil;
  }
  
  NSString *string =  [NSString stringWithFormat:@"%lu", (unsigned long)monthNumber];
  
  NSDate *date = [NSDate new];
  NSDateFormatter *dateFormatter = [NSDateFormatter new];
  
  [dateFormatter setDateFormat:@"MM"];
  date = [dateFormatter dateFromString:string];
  
  dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  
  [dateFormatter setDateFormat:@"MMMM"];
  NSString *result = [dateFormatter stringFromDate:date];
  
  return result;

  
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
  NSDateFormatter *dateFormatter = [NSDateFormatter new];
  [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  NSDate *dateM = [NSDate alloc];
  dateM = [dateFormatter dateFromString:date];
  
  [dateFormatter setDateFormat:@"dd"];
  NSString *str = [dateFormatter stringFromDate:dateM];
  
    
    return [str intValue];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
  
  NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
  
  NSDateFormatter *dateFormatter = [NSDateFormatter new];
  [dateFormatter setLocale:locale];
  [dateFormatter setDateFormat:@"E"];
  NSString *str = [dateFormatter stringFromDate:date];
  
    return str;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
  
  
  NSDateFormatter *dateFormatter = [NSDateFormatter new];
  [dateFormatter setDateFormat:@"w"];
  		
  NSString *str = [dateFormatter stringFromDate:date];
  NSString *str2 = [dateFormatter stringFromDate:[NSDate now]];
  
  return [str isEqualToString:str2]  ? YES : NO;
}

@end
