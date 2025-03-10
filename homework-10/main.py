from random import randint


def guess_the_number():
    target_number = randint(1, 100)
    attempts = 5

    print('Я загадав число від 1 до 100, ви маєте його вгадати)')

    while attempts > 0:
        try:
            print(f'\nУ вас залишилося {attempts} спроб, щоб вгадати число')
            user_guess = int(input(f'Як думаєте що я загадав?: '))

            if user_guess == target_number:
                print(f'\n\n\nВи Переможець! Ви вгадали число!\nЦе було:\n---> {target_number} <---\nВам знадобилося для цього {5-attempts} спроб, круто!')
                return True
            elif user_guess < target_number:
                print('Занадто низько!')
            else:
                print('Занадто високо!')

            attempts -= 1

        except ValueError:
            print('Будь ласка, введіть коректне число!')
            print('Будь ласка, введіть коректне число!')

    print(f'\n\n\nУ вас закінчилися спроби!\nВи Пройграли!(\nПравильне число було: {target_number}')
    return False


guess_the_number()