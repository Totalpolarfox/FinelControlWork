from datetime import date

class Pet_Animal:
    species = "Домашние животные"

    def __init__(self, name: str, birthday: date, commands: list):
        self.name = name
        self.birthday = birthday
        self.commands = commands

    def __str__(self):
        return f"{self.species} - Имя: {self.name}, {self.birthday}, выполняемые команды: {', '.join(self.commands)}"

    def add_command(self, command: str):
        if command not in self.commands:
            self.commands.append(command)

    def get_commands(self):
        return self.commands

class Dog(Pet_Animal):
    species = "Собака"

class Cat(Pet_Animal):
    species = "Кот"

class Hamster(Pet_Animal):
    species = "Хомяк"
    