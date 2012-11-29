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
@property (nonatomic, strong) UILabel *timestamp;
@property (nonatomic, strong) UILabel *location;
@property (nonatomic, strong) UILabel  *usernameLabel;
@property (nonatomic, strong) UIImageView  *userImageView;



@end

@implementation DrinkCellView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        self.imageView = [[UIImageView alloc] initWithFrame:frame];
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        self.imageView.clipsToBounds = YES;
        self.imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self addSubview:self.imageView];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, frame.size.height - 65, frame.size.width - 20, 15)];
        self.nameLabel.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        self.nameLabel.backgroundColor = [UIColor clearColor];
        self.nameLabel.textColor = [UIColor whiteColor];
        self.nameLabel.font = [UIFont boldSystemFontOfSize:22];
      //  self.nameLabel.backgroundColor = [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
        [self addSubview:self.nameLabel];
    
        self.timestamp = [[UILabel alloc] initWithFrame:CGRectMake(240, frame.size.height - 25, frame.size.width - 160, 15)];
        self.timestamp.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        self.timestamp.backgroundColor = [UIColor blackColor];
        self.timestamp.textColor = [UIColor grayColor];
        [self addSubview:self.timestamp];
    
        self.location = [[UILabel alloc] initWithFrame:CGRectMake(70, frame.size.height - 45, frame.size.width - 160, 15)];
        self.location.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        self.location.backgroundColor = [UIColor blackColor];
        self.location.textColor = [UIColor redColor];
        [self addSubview:self.location];
        
        
        self.usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, frame.size.height - 25, frame.size.width - 160, 15)];
        self.usernameLabel.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        self.usernameLabel.backgroundColor = [UIColor clearColor];
        self.usernameLabel.textColor = [UIColor whiteColor];
        [self addSubview:self.usernameLabel];
        
        self.userImageView = [[UIImageView alloc] initWithFrame: CGRectMake(10, frame.size.height - 65, 50, 50)];
        self.userImageView.contentMode = UIViewContentModeScaleAspectFill;
        self.userImageView.clipsToBounds = YES;
        self.userImageView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |UIViewAutoresizingFlexibleRightMargin;
        [self addSubview:self.userImageView];


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
    
        self.timestamp.text = drink.time;
        
        self.location.text = drink.location;
        
        self.usernameLabel.text = drink.user.name;
        
        self.userImageView.image = nil;
        [self.userImageView setImageWithURL:[NSURL URLWithString:drink.user.imageUrl]];
        
        
    }
}

@end
