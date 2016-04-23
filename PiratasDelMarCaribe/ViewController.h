//
//  ViewController.h
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 06/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"
@interface ViewController : UIViewController


@property (nonatomic) CGPoint currentPosition;
@property (nonatomic,strong) NSArray *tiles;	
@property (nonatomic, strong) Character * character;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property ( strong, nonatomic) Boss * boss;

@property (strong, nonatomic) IBOutlet UILabel *labelHealth;
@property (strong, nonatomic) IBOutlet UILabel *labelDamage;
@property (strong, nonatomic) IBOutlet UILabel *labelWeapon;
@property (strong, nonatomic) IBOutlet UILabel *labelArmor;

@property (strong, nonatomic) IBOutlet UITextView *textViewHistory;


@property (strong, nonatomic) IBOutlet UIButton *buttonNorth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSouth;
@property (strong, nonatomic) IBOutlet UIButton *buttonWest;
@property (strong, nonatomic) IBOutlet UIButton *buttonEast;





@property (strong, nonatomic) IBOutlet UIButton *buttonAction;


- (IBAction)actionPressed:(UIButton *)sender;


- (IBAction)arrowPressed :(UIButton*)sender;

-(void) updatePosition;





@end

