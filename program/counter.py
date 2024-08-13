class Counter:
    def __init__(self):
        self._count = 0
        self._is_open = False

    def __enter__(self):
        self._is_open = True
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self._is_open = False

    def add(self):
        if not self._is_open:
            raise RuntimeError("Счетчик не открыт. Используйте его в инструкции with.")
        self._count += 1

    def get_count(self):
        if not self._is_open:
            raise RuntimeError("Счетчик не открыт. Используйте его в инструкции with.")
        return self._count
        