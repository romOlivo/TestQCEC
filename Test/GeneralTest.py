from jkq.qcec import Configuration, Strategy, verify
from os.path import isfile, join
from os import listdir
import numpy as np
import pandas as pd
import json


def default_config():
    m_config = Configuration()
    m_config.strategy = Strategy.compilationflow
    return m_config


# Define constants
COLUMNS_NAMES = ['circuit', 'default']
PATH_TEST = ["neq1", "neq2"]
PATH_BASE = "../Circuits/"
PATH_ORIGINAL = "original"
CONFIGS = [default_config]


# Get the names of the circuits
path_original = PATH_BASE + PATH_ORIGINAL
circuits_names = [f for f in listdir(path_original) if isfile(join(path_original, f))]
total_circuits = len(circuits_names)
database = [None for _ in range(len(PATH_TEST))]

# Setting up the data gathering
results = None
index_database = 0

# Do the tests
for path_test in PATH_TEST:

    # Data Gathering
    results = np.empty([total_circuits, len(COLUMNS_NAMES)], dtype=object)
    results[:, 0] = circuits_names
    index_circuit = 0

    for circuit_name in circuits_names:

        # Calculate circuits paths
        path_original_circuit = path_original + "/" + circuit_name
        path_compiled_circuit = PATH_BASE + path_test + "/" + circuit_name

        # Set index for inserting data
        index_config = 1

        for make_config in CONFIGS:

            # Set dedicated verification strategy
            config = make_config()

            # Verify the compilation result
            result = verify(path_original_circuit, path_compiled_circuit, config)
            result = json.loads(str(result))
            results[index_circuit, index_config] = result["statistics"]["verification_time"]

            index_config = index_config + 1

        index_circuit = index_circuit + 1

    # Create and order the data
    database[index_database] = pd.DataFrame(results, columns=COLUMNS_NAMES)
    index_database = index_database + 1

print(database[0])
print("--------------------------------------------------")
print(database[1])
