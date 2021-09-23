from . generatorInterface import GeneratorInterface
from random import randint


class RandomlyRemoveGate(GeneratorInterface):
    def __init__(self, circuits_names, folder_original, name="neq1", n=1):
        super().__init__(circuits_names, folder_original)
        self.folder_destiny = name
        self.lines_to_remove = None
        self.current_line = 0
        self.n = n

    def new_circuit(self):
        self.lines_to_remove = None
        self.current_line = 0

    def has_to_be_removed(self, line, circuit_length):
        if self.lines_to_remove is None:
            self.lines_to_remove = [randint(0, circuit_length) + 1 for _ in range(self.n)]
            self.current_line = 0
        self.current_line = self.current_line + 1
        return self.current_line in self.lines_to_remove

