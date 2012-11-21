//
//  Drink.m
//  Hound
//
//  Created by Katie Smillie on 11/20/12.
//
//

#import "Drink.h"

@implementation Drink

+ (NSArray *)recentDrinks {
    NSMutableArray *drinks = [[NSMutableArray alloc] init];

    Drink *drink = [[Drink alloc] init];
    drink.name = @"Old Fashioned";
    drink.imageUrl = @"http://24.media.tumblr.com/tumblr_maj73brwmH1ro3h6zo1_1280.jpg";
    [drinks addObject:drink];

    drink = [[Drink alloc] init];
    drink.name = @"Martini";
    drink.imageUrl = @"http://sphotos-b.xx.fbcdn.net/hphotos-ash3/c0.0.403.403/p403x403/643984_881386677004_1737261116_n.jpg";
    [drinks addObject:drink];
    
    drink = [[Drink alloc] init];
    drink.name = @"Mezcal Mule";
    drink.imageUrl = @"http://24.media.tumblr.com/tumblr_mazya7AYSs1ro3h6zo1_1280.jpg";
    [drinks addObject:drink];

    return drinks;
}


@end
