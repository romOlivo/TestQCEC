from . generatorInterface import GeneratorInterface


class RandomlyRemoveGate(GeneratorInterface):
    def __init__(self, circuits_names, folder_original):
        super().__init__(circuits_names, folder_original)
        self.folder_destiny = "neq2"
