//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
- (NSString *)stringWithDeliLine:(NSArray *)deliLine;{
    NSString *theLineIsEmpty;
    NSMutableString * theLineIs = [[NSMutableString alloc] initWithString:@"The line is:"];
    
    if ([deliLine count] <= 0) {
        theLineIsEmpty = @"The line is currently empty.";
        return theLineIsEmpty;
    }
    
    for (NSUInteger i = 0; i < [deliLine count]; i++){
        NSUInteger lineNumber = i + 1;
        
        [theLineIs appendFormat:@"\n%lu. %@", lineNumber, deliLine[i]];
        
    }
   return theLineIs;
}


- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *firstInLine = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstInLine;
};
/*
 
 *  Define your methods here!
 
 */

@end




