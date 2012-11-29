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
    drink.time = @"2 secs ago";
    drink.location = @"Bourbon & Branch";
    
    drink.user = [[User alloc] init];
    drink.user.name = @"Greg Donaldson";
    drink.user.imageUrl = @"http://www.law.syr.edu/_assets/images/admissions/student-ambassadors/greg_donaldson.jpg";
    [drinks addObject:drink];

    drink = [[Drink alloc] init];
    drink.name = @"Negroni";
    drink.imageUrl = @"http://sphotos-b.xx.fbcdn.net/hphotos-ash3/c0.0.403.403/p403x403/643984_881386677004_1737261116_n.jpg";
    drink.time = @"10 mins ago";
    drink.location = @"Tradition";
    
    drink.user = [[User alloc] init];
    drink.user.name = @"Katie Smillie";
    drink.user.imageUrl = @"http://a0.twimg.com/profile_images/1676001070/Screen_Shot_2011-12-05_at_2.04.07_PM.png";
    [drinks addObject:drink];
    
    drink = [[Drink alloc] init];
    drink.name = @"Peach Fizz";
    drink.imageUrl = @"http://24.media.tumblr.com/tumblr_mazya7AYSs1ro3h6zo1_1280.jpg";
    drink.time = @"4 hours ago";
    drink.location = @"Churchill";
    
    drink.user = [[User alloc] init];
    drink.user.name = @"Tim Lee";
    drink.user.imageUrl = @"http://media-cache-ec5.pinterest.com/avatars/timothy1ee_1329181510_600.jpg";
    [drinks addObject:drink];

    return drinks;
}


@end
