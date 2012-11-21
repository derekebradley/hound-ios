//
//  DrinkCellView.m
//  Hound
//
//  Created by Katie Smillie on 11/20/12.
//
//

#import "DrinkCellView.h"
#import "UIImageView+AFNetworking.h"

@interface DrinkCellView ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation DrinkCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        self.imageView = [[UIImageView alloc] initWithFrame:frame];
        self.imageView.contentMode = UIViewContentModeCenter;
        self.imageView.clipsToBounds = YES;
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self addSubview:self.imageView];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, frame.size.height - 25, frame.size.width - 20, 15)];
        self.nameLabel.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        self.nameLabel.backgroundColor = [UIColor clearColor];
        self.nameLabel.textColor = [UIColor whiteColor];
      //  self.nameLabel.backgroundColor = [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
        [self addSubview:self.nameLabel];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

// - (void)drawRect:(CGRect)rect
//{
//    if (self.cell.selected || self.cell.highlighted) {
//  //draw the cell (background and content)
// // in the selected/highlighted state
// } else {
// // draw the cell (background and content)
// // in the normal state
// }
//}

- (void)setDrink:(Drink *)drink {
    if (_drink != drink) {
        _drink = drink;
        
        // Clear the image of the previous drink
        self.imageView.image = nil;
        
        // Start downloading the new image
        [self.imageView setImageWithURL:[NSURL URLWithString:drink.imageUrl]];

        self.nameLabel.text = drink.name;
    }
}

@end
