//
//  Boss.h
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 20/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Boss : NSObject

@property (nonatomic) int  healthBoss;

@property (strong, nonatomic) NSString * name;
@property (nonatomic) int damage;
@end
