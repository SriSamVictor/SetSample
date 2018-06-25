//
//  SetSample.m
//  SetExample
//
//  Created by Jean Martin on 22/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import "SetSample.h"

@implementation SetSample
  
-(void)setSamp:(NSInteger)sum firstName:(NSString *)nameStr secondBool:(BOOL)firstFlag{

// Set
    NSSet *setSample = [NSSet set];
    NSLog(@"%@",setSample);
    
// Set with Array
    NSMutableArray *arr1 = [[NSMutableArray alloc]init];
    [arr1 setArray:@[@"eezy",@"tutorials"]];
     NSLog(@"Arr 1%@",arr1);
    NSSet *setSample2 = [NSSet setWithArray:@[@"eezy",@"tutorials",@"website"]];
    NSLog(@"Set Sample With Array--%@",setSample2);
    
// Set with Object
    NSSet *setSample3 = [NSSet setWithObjects:setSample2,arr1, nil];
    NSLog(@"Set Sample With Object--%@",setSample3);

// Set with object with count
    NSString *value[5];
    value[0] = @"A";
    value[1] = @"B";
    value[2] = @"C";
    NSSet *setSample4 = [NSSet setWithObjects:value count:3];
    NSLog(@"Set Sample With Objects and Count--%@",setSample4);
    
// Set with Stored in temp set
    NSSet *setTempArray = [NSSet setWithArray:@[@"Eezy",@"Tutorials",@"Eezy"]];
    NSSet *setWithSet = [NSSet setWithSet:setTempArray];
    NSLog(@"Set with set--%@",setWithSet);
    
// Set With Adding Objects
    NSSet *setWithAdding = [NSSet setWithObjects:setWithSet, nil];
    NSSet *setWithAddObj = [setWithAdding setByAddingObject:setSample4];
    NSLog(@"Set With Adding Object%@",setWithAddObj);
    
// Set by adding object from set
    NSSet *setObj1 = [NSSet setWithObject:setWithAddObj];
    NSLog(@"Set Obj1--%@",setObj1);
    NSSet *setObj2 = [NSSet setWithObject:setWithSet];
    NSLog(@"Set Obj2--%@",setObj2);
    setObj2 = [setObj2 setByAddingObjectsFromSet:setObj1];
    NSLog(@"Set With Object--%@",setObj2);
    
// Set by adding array from set
    NSSet *set1 = [NSSet setWithObject:arr1];
    set1 = [set1 setByAddingObjectsFromArray:@[@"A",@"B",@"C"]];
    NSLog(@"Set 1--%@",set1);

}

-(void)setSamp2:(CGFloat)sum firstNumber:(NSInteger)firstNo secondNumber:(NSString *)charName{
    
// Init with array in set
    NSSet *itemSet = [[NSSet alloc]initWithArray:@[@"Australia",@"Portugal",@"Spain",@"Argentina"]];
    NSLog(@"Item Set1--%@",itemSet);
    
    NSSet *PlacesArray = [[NSSet alloc]initWithArray:@[@"Australia",@"Portugal",@"Japan",@"Argentina"]];
    
// Init with Object in set
    NSSet *itemSetObj = [[NSSet alloc]initWithObjects:itemSet,@[@"Mayanmar",@"Vitenam"],PlacesArray, nil];
    NSLog(@"Item Set2--%@",itemSetObj);
    
    NSUInteger countItemSet = [itemSetObj count];
    NSLog(@"Count Item Set--%ld",countItemSet);
    
// Set all objects:
    NSSet *setWithAll = [NSSet setWithObjects:PlacesArray,itemSet, nil];
    NSLog(@"Set With All Objects--%@",[setWithAll allObjects]);
    
// Set With any object
    NSSet *setWithAny = [NSSet setWithObjects:PlacesArray,itemSet, nil];
     NSLog(@"Set With Any Objects--%@",[setWithAny anyObject]);
    
// Set with contains object
     NSSet *setWithContains = [NSSet setWithObjects:PlacesArray,itemSet, nil];
     NSLog(@"Set With Contains Objects--%hhd",[setWithContains containsObject:itemSet]);
    
// Compare one set with another set:
    BOOL compareSet = [setWithContains isEqualToSet:setWithAny];
    NSLog(@"%d",compareSet);
    
// Filter Predicate
    NSSet *setWithPredicate = [NSSet setWithArray:@[@"Brinjal",@"PineApple",@"Mango"]];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] 'B'"];
    setWithPredicate = [setWithPredicate filteredSetUsingPredicate:predicate];
    NSLog(@"Set With Predicate%@",setWithPredicate);
    
}

@end
