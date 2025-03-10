#!/bin/bash

random_number=$((RANDOM % 100 + 1))
attempts=0
max_attempts=5

echo "Вгадай число від 1 до 100. У вас є $max_attempts спроб."

while ((attempts < max_attempts)); do
    read -p "Ваше припущення: " guess

    ((attempts++))

    if ((guess == random_number)); then
        echo "Вітаємо! Ви вгадали правильне число!"
        exit 0
    elif ((guess > random_number)); then
        echo "Занадто високо."
    else
        echo "Занадто низько."
    fi
done

echo "Вибачте, у вас закінчилися спроби. Правильним числом було $random_number."