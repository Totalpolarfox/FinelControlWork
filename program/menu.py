from animal_registry import AnimalRegistry

class Menu:
    def __init__(self):
        self.registry = AnimalRegistry()

    def display(self):
        while True:
            print("\n----- Реестр животных -----")
            print("  1. Завести новое животное")
            print("  2. Список команд животного")
            print("  3. Обучить животное новым командам")
            print("  4. Просмотреть всех животных")
            print("  5. Общее количество животных")
            print("  6. Записать реестр в JSON файл")
            print("  7. Выход")
            
            choice = input("Выберите пункт меню (1-7): ")
            
            if choice == '1':
                self.registry.add_animal()
            elif choice == '2':
                self.registry.list_animal_commands()
            elif choice == '3':
                self.registry.teach_animal()
            elif choice == '4':
                self.registry.list_animals()
            elif choice == '5':
                self.registry.show_total_animals()
            elif choice == '6':
                self.registry.save_to_json()
            elif choice == '7':
                print("\nБлагодарим Вас за использование реестра животных.\n")
                break
            else:
                print("\nНеверный вариант. Пожалуйста, введите число от 1 до 7.\n")