//
//  main.m
//  proj
//
//  Created by Алина Ковтунович on 01.02.2024.
//

#import <Foundation/Foundation.h>
#import "quest2-Swift.h"
#import "quest2-Bridging-Header.h"
#import "Coffee.h"
#import "Barista.h"

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
        
        BaristaMachine *machine = [[BaristaMachine alloc] initWithCoffee:@"Coffee"];
        //Coffee *brewedCoffee = [machine brew];
        
        

            // Просим выбрать, кто будет готовить кофе
             NSLog(@"Choose barista:");
             NSLog(@"1. Man");
             NSLog(@"2. Machine");
             
            char choiceBarista;
            NSInteger flag = 0;
            do {
             scanf("%c", &choiceBarista);
             // Выводим меню
             if (choiceBarista == '1' ) {
                 NSLog(@"Choose coffee in menu:");
                 NSLog(@"1. %@ %.2f$", cappuccino.name, cappuccino.price);
                 NSLog(@"2. %@ %.2f$", americano.name, americano.price);
                 NSLog(@"3. %@ %.2f$", latte.name, latte.price);
                 flag += 1;
                 break;
             } else if (choiceBarista == '2') {
                 NSLog(@"Choose coffee in menu:");
                 NSLog(@"1. %@ %.2f$", cappuccino.name, (cappuccino.price * 0.9));
                 NSLog(@"2. %@ %.2f$", americano.name, (americano.price  * 0.9));
                 NSLog(@"3. %@ %.2f$", latte.name, (latte.price * 0.9));
                 flag += 1;
                 break;
             } else {
                 NSLog(@"Try again! Choose barista:");
                 flag = 0;
             }
            } while (!flag);
            
             // Запрашиваем у пользователя выбор
             NSLog(@"\nEnter the number of the coffee you want:");
             flag = 0;

            Coffee *selectedCoffee;
            char choice;
        while (!flag) {
            scanf("%c", &choice);
             // Проверяем введенный номер и готовим кофе
                if (choice == '1') {
                    selectedCoffee = cappuccino;
                    flag += 1;
                    break;
                } else if (choice == '2') {
                    selectedCoffee = americano;
                    flag += 1;
                    break;
                } else if (choice == '3') {
                     selectedCoffee = latte;
                     flag += 1;
                     break;
                } else {
                    NSLog(@"Try again!");
                    flag = 0;
                   
             }
            }
             // Приготавливаем выбранный кофе
        if (choiceBarista == '1') {
            [barista brew:selectedCoffee];
        } else {
            [machine brew];
        }
        
         }
 
    return 0;
}
