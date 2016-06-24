//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *favoriteThings;
@property (strong, nonatomic) NSString *favoriteFood;
@property (strong, nonatomic) NSString *favoriteColor;
@property (strong, nonatomic) NSString *favoriteMusicalArtist;
@property (strong, nonatomic) NSString *favoriteGame;

-(instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings;
-(instancetype)initWithName:(NSString *)name favoriteFood:(NSString *)food favoriteColor:(NSString *)color favoriteMusicalArtist:(NSString *)musicalArtist favoriteGame:(NSString *)game otherFavorites:(NSArray *)favoriteThings;

@end
