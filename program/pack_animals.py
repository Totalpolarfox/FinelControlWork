from datetime import date

class Pack_Animal:
    species = "Вьючные животные"

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

class Horse(Pack_Animal):
    species = "Лошадь"

class Camel(Pack_Animal):
    species = "Верблюд"

class Donkey(Pack_Animal):
    species = "Осел"
    