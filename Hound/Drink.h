//
//  Drink.h
//  Hound
//
//  Created by Katie Smillie on 11/20/12.
//
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Drink : NSObject

@property (nonatomic, strong) NSString *imageUrl;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) User *user;


+ (NSArray *)recentDrinks;

@end
