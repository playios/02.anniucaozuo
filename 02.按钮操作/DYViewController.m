//
//  DYViewController.m
//  02.按钮操作
//
//  Created by YOU on 15/3/28.
//  Copyright (c) 2015年 YOU. All rights reserved.
//

#import "DYViewController.h"
typedef enum {
kMoveDirTop=10,
    kMoveDirLeft,
    kMoveDirRight,
    kMoveDirBottom
} kMoveDir;

#define kMvoeDelate 20
@interface DYViewController ()
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@end

@implementation DYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)move:(UIButton *)button{
//    CGRect frame=self.iconBtn.frame;
//    switch (button.tag) {
//        case kMoveDirTop:
//            frame.origin.y-=kMvoeDelate;
//            break;
//        case kMoveDirLeft:
//            frame.origin.x-=kMvoeDelate;
//            break;
//        case kMoveDirRight:
//            frame.origin.x+=kMvoeDelate;
//            break;
//        case kMoveDirBottom:
//            frame.origin.y+=kMvoeDelate;
//            break;
//            
//    }
    CGFloat x,y;
    switch (button.tag) {
        case kMoveDirBottom:
            y =kMvoeDelate;
                break;
            case kMoveDirTop:
            y =-kMvoeDelate;
            break;
        case kMoveDirLeft:
            x =-kMvoeDelate;
            break;
        case kMoveDirRight:
            x =kMvoeDelate;
            break;
        default	:
            break;
    }
    self.iconBtn.transform=CGAffineTransformTranslate(self.iconBtn.transform, x,y);

}


-(IBAction)zoom :(UIButton *)button{
  //  CGRect frame=self.iconBtn.bounds;
//
//    if (button.tag) {
//        frame.size.height+=50;
//        frame.size.width+=50;
//    }else{
//        frame.size.height-=50;
//        frame.size.width-=50;
//    }
//       self.iconBtn.bounds=frame;
    CGFloat z=button.tag?1.2:0.8;
    self.iconBtn.transform=CGAffineTransformScale(self.iconBtn.transform, z,z);
}
-(IBAction)ration:(UIButton *)button{
    CGFloat angle=button.tag?-M_PI_4:M_PI_4;
    [UIView beginAnimations:nil context:nil];
    self.iconBtn.transform = CGAffineTransformRotate(self.iconBtn.transform, angle);
    [UIView commitAnimations];
}


@end
