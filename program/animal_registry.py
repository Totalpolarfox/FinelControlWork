import os
import json
from datetime import datetime
from pet_animals import Pet_Animal, Dog, Cat, Hamster
from pack_animals import Pack_Animal, Horse, Camel, Donkey
from counter import Counter

class AnimalRegistry:
    def __init__(self):
        self.animals = []
        self.counter = Counter()

    def add_animal(self):
        name = input("Введите имя животного: ")
        while True:
            birthday_str = input("Введите дату его рождения (ГГГГ-MM-ДД): ")
            try:
                birthday = datetime.strptime(birthday_str, "%Y-%m-%d").date()
                break
            except ValueError:
                print("\nОшибка в формате даты. Пожалуйста используйте ГГГГ-MM-ДД.")
        commands = input("Введите команды (через запятую): ").split(',')
        commands = [cmd.strip() for cmd in commands]

        print("\nВыберите вид животного:")
        print("  1. Собака")
        print("  2. Кот")
        print("  3. Хомяк")
        print("  4. Лошадь")
        print("  5. Верблюд")
        print("  6. Осел")

        while True:
            species_choice = input("Введите нужный номер (1-6): ")
            if species_choice in ['1', '2', '3', '4', '5', '6']:
                break
            else:
                print("\nНеверный вариант. Пожалуйста, введите число от 1 до 6.")

        try:
            with self.counter:
                if species_choice == '1':
                    animal = Dog(name, birthday, commands)
                    species = "Собака"
                elif species_choice == '2':
                    animal = Cat(name, birthday, commands)
                    species = "Кот"
                elif species_choice == '3':
                    animal = Hamster(name, birthday, commands)
                    species = "Хомяк"
                elif species_choice == '4':
                    animal = Horse(name, birthday, commands)
                    species = "Лошадь"
                elif species_choice == '5':
                    animal = Camel(name, birthday, commands)
                    species = "Верблюд"
                elif species_choice == '6':
                    animal = Donkey(name, birthday, commands)
                    species = "Осел"                
                else:
                    print("\nНеверный вариант. Пожалуйста, введите число от 1 до 6.")

                self.animals.append(animal)
                self.counter.add()
                print(f"\n{species} {name} был добавлен. Общее количество животных: {self.counter.get_count()}")
        except RuntimeError as e:
            print(f"\nError: {e}")

    def list_animal_commands(self):
        if not self.animals:
            print("\nВ реестре нет животных.")
            return
        for i, animal in enumerate(self.animals, 1):
            print(f"{i}. {animal.name} ({animal.species})")
        choice = int(input("Выберите животное: ")) - 1
        if 0 <= choice < len(self.animals):
            print(f"\nКоманды, выполняемые {self.animals[choice].name}: {', '.join(self.animals[choice].get_commands())}")
        else:
            print("\nНеверный выбор.")

    def teach_animal(self):
        if not self.animals:
            print("\nВ реестре нет животных.")
            return
        for i, animal in enumerate(self.animals, 1):
            print(f"{i}. {animal.name} ({animal.species})")
        choice = int(input("Выберите животное: ")) - 1
        if 0 <= choice < len(self.animals):
            new_command = input("Введите новую команду: ")
            self.animals[choice].add_command(new_command)
            print(f"\n{new_command} была добавлена в навыки {self.animals[choice].name}.")
        else:
            print("\nНеверный выбор.")

    def list_animals(self):
        if not self.animals:
            print("\nВ реестре нет животных.")
        else:
            print()
            for animal in self.animals:
                print(animal)

    def show_total_animals(self):
        try:
            with self.counter:
                print(f"\nОбщее количество животных: {self.counter.get_count()}")
        except RuntimeError as e:
            print(f"\nОшибка: {e}")

    def save_to_json(self):
        if not self.animals:
            print("\nНет данных для записи.")
            return

        data = []
        for animal in self.animals:
            animal_data = {
                "name": animal.name,
                "species": animal.species,
                "birthday": animal.birthday.isoformat(),
                "commands": animal.commands
            }
            data.append(animal_data)

        while True:
            filename = input("Введите имя файла: ")
            if filename:
                filename = filename.strip() + ".json"
                if os.path.exists(filename):
                    overwrite = input(f"\nФайл {filename} существует. Перезаписываем его? (y/n): ").lower()
                    if overwrite != 'y':
                        continue
                break
            else:
                print("\nИмя файла не может быть пустым. Пожалуйста, попробуйте снова.")

        try:
            with open(filename, 'w') as f:
                json.dump(data, f, indent=4)
            print(f"\nДанные успешно сохранены в {filename}")
        except IOError as e:
            print(f"\nПри сохранении файла произошла ошибка: {e}")