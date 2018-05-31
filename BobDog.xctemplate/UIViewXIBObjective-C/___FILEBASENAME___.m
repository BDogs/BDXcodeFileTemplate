//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___


#pragma mark - Override Methods
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle bundleForClass:___FILEBASENAMEASIDENTIFIER___.class] loadNibNamed:@"___FILEBASENAMEASIDENTIFIER___" owner:self options:nil];
        [self addSubview:_contentView];
    }
    return self;
}

- (void)layoutSubviews {
    self.contentView.frame = self.bounds;
}


#pragma mark - Private Methods
#pragma mark - Event Response


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
