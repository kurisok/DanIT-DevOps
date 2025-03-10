# Клас Alphabet
class Alphabet:
    def __init__(self, lang, letters):
        self.lang = lang  # Мова
        self.letters = letters

    def print(self):
        print(" ".join(self.letters))

    def letters_num(self):
        return len(self.letters)

# Клас EngAlphabet, який успадковує Alphabet
class EngAlphabet(Alphabet):
    _letters_num = 26

    def __init__(self):
        super().__init__("En", list("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))

    def is_en_letter(self, letter):
        return letter.upper() in self.letters

    def letters_num(self):
        return EngAlphabet._letters_num

    @staticmethod
    def example():
        return "The quick brown fox jumps over the lazy dog."


# Основний код для тестування

# Створення обєкта класу EngAlphabet
english_alphabet = EngAlphabet()

english_alphabet.print()

print(f"Кількість букв в англійському алфавіті: {english_alphabet.letters_num()}")

print(f"Буква 'F' належить англійському алфавіту? {english_alphabet.is_en_letter('F')}")

print(f"Буква 'Щ' належить англійському алфавіту? {english_alphabet.is_en_letter('Щ')}")

print(f"Приклад тексту англійською: {english_alphabet.example()}")
