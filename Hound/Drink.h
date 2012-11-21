//
//  Drink.h
//  Hound
//
//  Created by Katie Smillie on 11/20/12.
//
//

#import <Foundation/Foundation.h>

@interface Drink : NSObject

@property (nonatomic, strong) NSString *imageUrl;
@property (nonatomic, strong) NSString *name;

+ (NSArray *)recentDrinks;

@end
