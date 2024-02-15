//
//  main.m
//  quest1
//
//  Created by ayrmidon
//

#import <Foundation/Foundation.h>

// Класс Coffee
@interface Coffee : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) float price;

@end

@implementation Coffee

@end

// Класс Barista
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создаем объекты кофе
        Coffee *cappuccino = [[Coffee alloc] init];
        cappuccino.name = @"Cappuccino";
        cappuccino.price = 2.0;

        Coffee *americano = [[Coffee alloc] init];
        americano.name = @"Americano";
        americano.price = 1.5;

        Coffee *latte = [[Coffee alloc] init];
        latte.name = @"Latte";
        latte.price = 2.3;

        // Создаем объект баристы
        Barista *barista = [[Barista alloc] init];
        barista.firstName = @"John";
        barista.lastName = @"Doe";
        barista.experience = 5;

        // Выводим меню
        NSLog(@"Choose coffee in menu:");
        NSLog(@"1. %@ %.2f$", cappuccino.name, cappuccino.price);
        NSLog(@"2. %@ %.2f$", americano.name, americano.price);
        NSLog(@"3. %@ %.2f$", latte.name, latte.price);

        // Запрашиваем у пользователя выбор
        NSLog(@"\nEnter the number of the coffee you want:");
        NSInteger choice;
        scanf("%ld", &choice);

        // Проверяем введенный номер и готовим кофе
        Coffee *selectedCoffee;
        switch (choice) {
            case 1:
                selectedCoffee = cappuccino;
                break;
            case 2:
                selectedCoffee = americano;
                break;
            case 3:
                selectedCoffee = latte;
                break;
            default:
                NSLog(@"Try again!");
                return 0;
        }

        // Приготавливаем выбранный кофе
        [barista brew:selectedCoffee];
    }
    return 0;
}
