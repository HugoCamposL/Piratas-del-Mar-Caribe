//
//  TileFactory.m
//  PiratasDelMarCaribe
//
//  Created by Hugo Antonio Campos Lopez on 07/04/16.
//  Copyright © 2016 Hugo Antonio Campos Lopez. All rights reserved.
//

#import "TileFactory.h"
#import "Tile.h"


@implementation TileFactory

-(NSArray*)tiles{
    Tile * tile1 = [[Tile alloc]init];
    tile1.history = @"Bienvenido a Piratas del Caribe. Eres un pirata en la epoca donde el mar era el dueño del mundo. Tu nombre es Dave, y un día cuando te encontrabas en puerto una botella con un mapa dentro, llegó a ti. En el mapa está la leyenda 'Para encontrar el tesoro seguíd la ruta pero cuidado con los peligros que los acecha' Avanza al SUR.";
    tile1.backgroundImage = [UIImage imageNamed:@"PiratasMapa.png"];
    
    weapon * Weapon = [[weapon alloc] init];
    
    Weapon.name = @"La destructora";
    Weapon.damage = 20;
    tile1.Weapon = Weapon;
    
    armor *Armor = [[armor alloc] init];
    
    Armor.health = 150;
    Armor.name = @"Coraza Rojiza";
    tile1.Armor = Armor;
    
    tile1.actionButton = @"A la aventura";

    
    Tile * tile2 = [[Tile alloc]init];
    tile2.history = @"Mientras ibas en camino te encontraste con la East Indian Company, encargada de eliminar piratas, sus intenciones no son buenas así que preparad las armas, apunten y... ¡Presiona el botón 'Atacar'! Después moved al SUR.";
    tile2.backgroundImage = [UIImage imageNamed:@"PiratasAtaque.png"];
    tile2.healthEffect = -15;
    tile2.actionButton = @"Defenderse";
    
    Tile * tile3 = [[Tile alloc]init];
    tile3.history = @"Saliste avante en la pelea pero ocupas regresar a puerto a recargar materiales y a reparar daños, avanza hacia el ESTE.";
    tile3.backgroundImage =[UIImage imageNamed:@"PiratasComercio.png"];
    tile3.healthEffect = 10;
    tile3.actionButton = @"Regresar a puerto.";

    NSMutableArray * col1 = [[NSMutableArray alloc]init];
    [col1 addObject:tile1];
    [col1 addObject:tile2];
    [col1 addObject:tile3];
    
    
    
    
    Tile * tile4 = [[Tile alloc]init];
    tile4.history = @"Mientras avanzas por el mar, algo hace que se detenga el barco por completo... ¡Un KRAKEN! Defiende tu navío a toda cosa. Avanza hacia el ESTE.";
    tile4.backgroundImage = [UIImage imageNamed:@"PiratasKraken.png"];
    tile4.healthEffect = -50;
    tile4.actionButton = @"¡Lucha contra el KRAKEN!";

    
    Tile * tile5 = [[Tile alloc]init];
    tile5.history = @"El herrero te ha obsequiado un arma legendaria, sería bueno llevarla contigo por si acaso. Avanza hacia el NORTE.";
    tile5.backgroundImage = [UIImage imageNamed:@"PiratasTrabuco.png"];
    weapon * Alibaba = [[weapon alloc] init];
    Alibaba.damage = 30;
    Alibaba.name = @"La Ali Baba";
    tile5.actionButton = @"Equipar AliBaba";
    tile5.Weapon = Alibaba;

    
    Tile * tile6 = [[Tile alloc]init];
    tile6.history = @"Parece que hay partes del barco que necesitas un herrero, por lo tanto contratas a uno para hacer las reparaciones pertinentes, además que ha mejorado tu armadura. Avanza hacia el NORTE.";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratasHerrero.png"];
    armor * Blacksmitharmor = [[armor alloc] init];
    Blacksmitharmor.name = @"Armadura del Herrero Mágico";
    Blacksmitharmor.health = 200;
    tile6.Armor = Blacksmitharmor;
    tile6.healthEffect = 40;
    tile6.actionButton = @"Equipar Armadura del Herrero";

    
    NSMutableArray * col2 = [[NSMutableArray alloc]init];
    [col2 addObject:tile4];
    [col2 addObject:tile5];
    [col2 addObject:tile6];
    
    
    
    
    Tile * tile7 = [[Tile alloc]init];
    tile7.history = @"Tras atacar y escapar del KRAKEN, un LORO llega al barco repitiendo '¡No sigan, no sigan, no sigan!'. Lo cual asusta a toda la tripulación ¡Cálmalos para que puedan continuar la aventura. Avanza al SUR.";
    tile7.backgroundImage =[UIImage imageNamed:@"PiratasLoro.png"];
    tile7.actionButton = @"Ignorar loro";

    
    Tile * tile8 = [[Tile alloc]init];
    tile8.history = @"La tripulación se empieza a amotinar, pon orden para que no te hagan caminar por la plancha.";
    tile8.backgroundImage = [UIImage imageNamed:@"PiratasPasarela.png"];
    tile8.actionButton = @"Defenderse";

    tile8.healthEffect = -20;
    
    Tile * tile9 = [[Tile alloc]init];
    tile9.history = @"Uno de los amotinados prende fuego al barco por lo cual todos corren despavoridos ¡Ordena que apaguen el fuego! Avanza al Este.";
    tile9.backgroundImage = [UIImage imageNamed: @"PiratasBarco.png"];
    tile9.healthEffect = -10;
    tile9.actionButton = @"Apagar el fuego.";

    
    
    NSMutableArray * col3 = [[NSMutableArray alloc]init];
    [col3 addObject:tile7];
    [col3 addObject:tile8];
    [col3 addObject:tile9];
    
    
    
    Tile * tile10 = [[Tile alloc]init];
    tile10.history = @"Continuaste avanzando y encuentras otro cofre, al abrirlo, sorpresa, es el tesoro verdadero ¡Felicidades Pirata!";
    tile10.backgroundImage = [UIImage imageNamed:@"PiratasTesoro2.png"];
    tile10.actionButton = @"A gastarse el tesoro.";

    
    Tile * tile11 = [[Tile alloc]init];
    tile11.history = @"Saliste victorioso pero a duras penas. Caminas por el pasillo y te encuentras con el TESORO, ¡pero es falso!. El cual tiene un cadaver dentro, ¿ Quieres utilizar la armadura del esqueleo? Sigue buscando. Avanza hacia al NORTE.";
    tile11.backgroundImage = [UIImage imageNamed:@"PiratasTesoro.png"];
    armor * skullArmor = [[armor alloc] init];
    skullArmor.name = @"Armadura de Rufián";
    skullArmor.health = 40;
    tile11.actionButton = @"Vestir armadura";

    Tile * tile12 = [[Tile alloc]init];
    tile12.history = @"Te has encontrado con Barba Negra ¡Lucha contra él! ¡A por la victoria! Después de luchar avanza hacia al NORTE";
    tile12.backgroundImage = [UIImage imageNamed:@"PiratasBoss.png"];
    tile12.healthEffect = -40;
    tile12.actionButton = @"Lucha a muerte.";

    NSMutableArray * col4 = [[NSMutableArray alloc]init];
    [col4 addObject:tile10];
    [col4 addObject:tile11];
    [col4 addObject:tile12];
    
    
    NSArray * tiles = [[NSArray alloc]initWithObjects:col1, col2, col3, col4, nil];
    
    return tiles;
}


-(Character*) character{
    
    Character *character = [[Character alloc] init];
    character.name = @"Ricardo";
    character.health =   100;
    
    weapon * Weapon = [[weapon alloc] init];
    
    Weapon.name = @"Puños";
    Weapon.damage = 2;
    character.weapon = Weapon;
    
    armor *Armor = [[armor alloc] init];
    
    Armor.health = 10;
    Armor.name = @"Ropa vieja";
    character.armor = Armor;
    

    return character;
}

-(Boss*) boss{
    
    
    Boss * boss = [[Boss alloc] init];
    
    boss.healthBoss = 100;
    boss.name = @"Pirata Barbakhan";
    return boss;
}















@end
