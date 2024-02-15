//
//  Barista.h
//  proj
//
//  Created by Алина Ковтунович on 01.02.2024.
//

#ifndef Barista_h
#define Barista_h
#import <Foundation/Foundation.h>
#import "Coffee.h"
@class Coffee;

@interface Barista : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) NSInteger experience;

- (void)brew:(Coffee *)coffee;
@end


@implementation Barista

- (void)brew:(Coffee *)coffee {
    NSLog(@"Processing brewing coffee...");
    NSLog(@"Your %@ is ready!", coffee.name);
}

@end

#endif /* Barista_h */
