//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

-(instancetype)init {
    return [self initWithName:@"" favoriteFood:@"" favoriteColor:@"" favoriteMusicalArtist:@"" favoriteGame:@"" otherFavorites:[NSMutableArray new]];
}

-(instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings {
    return [self initWithName:(NSString *)name favoriteFood:@"" favoriteColor:@"" favoriteMusicalArtist:@"" favoriteGame:@"" otherFavorites:favoriteThings];
}

-(instancetype)initWithName:(NSString *)name favoriteFood:(NSString *)food favoriteColor:(NSString *)color favoriteMusicalArtist:(NSString *)musicalArtist favoriteGame:(NSString *)game otherFavorites:(NSArray *)favoriteThings {
    self = [super init];
    if (self) {
        _name = name;
        _favoriteFood = food;
        _favoriteColor = color;
        _favoriteMusicalArtist = musicalArtist;
        _favoriteGame = game;
        _favoriteThings = favoriteThings;
    }
    return self;
}

@end
