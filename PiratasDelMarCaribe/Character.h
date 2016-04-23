//
//  Character.h
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 14/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "weapon.h"
#import "armor.h"

@interface Character : NSObject


@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) weapon * weapon;

@property (nonatomic, strong) armor *armor;

@property (nonatomic) int health;

@property (nonatomic) int damage;

@end
