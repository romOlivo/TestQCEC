import os


class GeneratorInterface:
    def __init__(self, circuits_names, folder_original, path_base="../Circuits/"):
        self.circuits_names = circuits_names
        self.circuit = None
        self.index = 0
        self.circuit_name = None
        self.path_base = path_base
        self.path_original = self.path_base + folder_original + "/"
        self.folder_destiny = None
        self.path_destiny = None

    def create_folder(self):
        self.path_destiny = self.path_base + self.folder_destiny + "/"
        if not os.path.exists(self.path_destiny):
            os.makedirs(self.path_destiny)

    def read_next_circuit(self):
        if not self.has_next_circuit():
            return
        self.circuit_name = self.circuits_names[self.index]
        self.index = self.index + 1
        with open(self.path_original + self.circuit_name, "r") as f:
            self.circuit = f.readlines()

    def has_next_circuit(self):
        return self.index < len(self.circuits_names)

    def generate(self):
        self.create_folder()
        while self.has_next_circuit():
            self.read_next_circuit()
            is_head = True
            circuit_length = len(self.circuit) - 1
            self.new_circuit()
            with open(self.path_destiny + self.circuit_name, "w") as f:
                for line in self.circuit:
                    if is_head:
                        circuit_length = circuit_length - 1
                        f.write(line)
                        if line.strip("\n") == ".begin":
                            is_head = False
                    else:
                        if line.strip("\n") == ".end":
                            f.write(line)
                            break
                        if not self.has_to_be_removed(line, circuit_length):
                            f.write(self.modify_line(line, circuit_length))

    def has_to_be_removed(self, line, circuit_length):
        return False

    def modify_line(self, line, circuit_length):
        return line

    def new_circuit(self):
        pass
