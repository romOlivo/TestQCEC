from jkq.qcec import Configuration, Strategy, verify
from os import listdir
from os.path import isfile, join
import json

# Define constants
PATH_BASE = "../Circuits/"
PATH_ORIGINAL = "original"
PATH_TEST = ["neq1"]

# Get the names of the circuits
path_original = PATH_BASE + PATH_ORIGINAL
circuits_names = [f for f in listdir(path_original) if isfile(join(path_original, f))]

for circuit_name in circuits_names:

    for path_test in PATH_TEST:

        # Calculate circuits paths
        path_original_circuit = path_original + "/" + circuit_name
        path_compiled_circuit = PATH_BASE + path_test + "/" + circuit_name

        # Set dedicated verification strategy
        config = Configuration()
        config.strategy = Strategy.compilationflow

        # Verify the compilation result
        result = verify(path_original_circuit, path_compiled_circuit, config)
        result = json.loads(str(result))
        print("Name: {0} -- Result: {1} -- Time: {2}"
              .format(circuit_name, result["equivalence"], result["statistics"]["verification_time"]))


