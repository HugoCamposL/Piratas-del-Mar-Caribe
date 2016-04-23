//
//  TileFactory.h
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 07/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"
#import "Character.h"
#import "weapon.h"
#import "Boss.h"

@interface TileFactory : NSObject

-(NSArray*)tiles;
-(Character*) character;
-(Boss*) boss;
@end
