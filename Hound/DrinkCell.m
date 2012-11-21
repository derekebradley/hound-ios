//
//  DrinkCell.m
//  Hound
//
//  Created by Katie Smillie on 11/20/12.
//
//

#import "DrinkCell.h"
#import "DrinkCellView.h"

@interface DrinkCell ()

@property (nonatomic, strong) DrinkCellView *customView;

@end

@implementation DrinkCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        CGRect viewFrame = CGRectMake(0.0, 0.0, self.contentView.bounds.size.width, self.contentView.bounds.size.height);
        
        self.customView = [[DrinkCellView alloc] initWithFrame:viewFrame];
        
        [self.contentView addSubview:self.customView];
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    if (animated) {
        // animation code
        [super setSelected:selected animated:NO];
        // more animation code
    } else {
        [super setSelected:selected animated:NO];
    }
}

- (void)setDrink:(Drink *)drink {
    _drink = drink;
    self.customView.drink = drink;
}

@end
