//
//  ViewController.m
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 06/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import "ViewController.h"
#import "TileFactory.h"
#import "Tile.h"


@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Carga de la pantalla
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TileFactory * factory = [[TileFactory alloc]init ];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    self.currentPosition = CGPointMake(0, 0);
   
    
    [self updatePosition];
    [self updateArrowButtons];

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark - Interactuación con la app
- (IBAction)actionPressed:(UIButton *)sender {
    
    NSLog(@"Action Pressed");
    Tile * tile = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    
    
    if (tile.healthEffect == -40 ) {
        self.boss.healthBoss = self.boss.healthBoss - self.character.damage ;
    }
    
    if (self.boss.healthBoss <= 0) {
        UIAlertController * ganaste = [UIAlertController alertControllerWithTitle:@"Felicidades" message:@"Has derrotado a Barbakhan, presiona OK." preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self reset];
        }];
        
        [ganaste addAction:okAction];
        [self presentViewController:ganaste animated:YES completion:nil];
    }
    
    if (self.character.health <= 0) {
        UIAlertController * perdiste = [UIAlertController alertControllerWithTitle:@"Game Over" message:@"Has perdido, presiona OK para reiniciar el juego" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * gameOverAcion = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self reset];
        }];
        [perdiste addAction: gameOverAcion];
        
        [self presentViewController:perdiste animated:YES completion:nil];
    }
    [self updateCharacterStatsWithTile:tile];
    [self updatePosition];
}

-(IBAction)arrowPressed:(UIButton *)sender{
    int buttonTag = (int)sender.tag;
    
    
    switch (buttonTag) {
        case 0:
            NSLog(@"N");
            self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y-1);
            break;
            
            case 1:
            NSLog(@"S");
            self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y+1);
            break;
            
            case 2:
            NSLog(@"W");
            self.currentPosition = CGPointMake(self.currentPosition.x-1, self.currentPosition.y);
            break;
            
            case 3:
            NSLog(@"E");
            self.currentPosition = CGPointMake(self.currentPosition.x+1, self.currentPosition.y);
            break;
            
        default:
            NSLog(@"Ningun punto cardinal aqui");
            break;
    }
    
    [self updateArrowButtons];
    [self updatePosition];
}
#pragma mark - Actualizar elementos.
-(void) updatePosition{
    
    Tile * currentTile = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    [self.textViewHistory setText:currentTile.history];
    [self.backgroundImage setImage:currentTile.backgroundImage];
    
    [self.labelHealth setText:[NSString stringWithFormat:@"%d", self.character.health]];
    [self.labelArmor setText:self.character.armor.name];
    [self.labelDamage setText:[NSString stringWithFormat:@"%d", self.character.damage]];
    [self.labelWeapon setText:self.character.weapon.name];
    [self.buttonAction setTitle:currentTile.actionButton forState:UIControlStateNormal];
    
}

-(void) updateArrowButtons {
    
    self.buttonNorth.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y-1)];
    self.buttonSouth.hidden = ![self canMoveToPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y+1)];
    self.buttonWest.hidden  = ![self canMoveToPoint:CGPointMake(self.currentPosition.x-1, self.currentPosition.y)];
    self.buttonEast.hidden  = ![self canMoveToPoint:CGPointMake(self.currentPosition.x+1, self.currentPosition.y)];
}
    
    


-(BOOL) canMoveToPoint:(CGPoint)point{
    if (point.x<0) {
        return NO;
    }
    if (point.y<0) {
        return NO;
    }
    if (point.x>=[self.tiles count]) {
        return NO;
    }
    if (point.y>=[[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    
    
    
    return YES;
}

-(void) updateCharacterStatsWithTile:(Tile*) tile {
    weapon * Weapon = tile.Weapon;
    armor * Armor = tile.Armor;
    int health = tile.healthEffect;
    
    if (Weapon!=nil) {
        self.character.damage = self.character.damage - self.character.weapon.damage + Weapon.damage;
        self.character.weapon = Weapon;
    }
    if (Armor!=nil) {
        self.character.health = self.character.health - self.character.armor.health + Armor.health;
        self.character.armor = Armor;
    }
    if (health!=0) {
        self.character.health = self.character.health + health;
    }
    [self updatePosition];
}


#pragma mark - Reset.
-(void) reset {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}
@end

