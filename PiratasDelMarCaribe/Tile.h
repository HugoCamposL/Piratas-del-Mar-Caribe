//
//  Tile.h
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 07/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "weapon.h"
#import "armor.h"

@interface Tile : NSObject


@property (nonatomic, strong) NSString *history;

@property (strong, nonatomic) NSString *actionButton;

@property (strong, nonatomic) UIImage * backgroundImage;

@property (strong, nonatomic) weapon *Weapon;

@property (strong, nonatomic) armor * Armor;

@property (nonatomic) int healthEffect;


@end
