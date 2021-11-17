from jkq.qcec import Configuration, Strategy, verify
from os.path import isfile, join
from os import listdir
import numpy as np
import pandas as pd
import json


def proportional_config():
    m_config = Configuration()
    m_config.strategy = Strategy.proportional
    return m_config


def naive_config():
    m_config = Configuration()
    m_config.strategy = Strategy.naive
    return m_config


def lookahead_config():
    m_config = Configuration()
    m_config.strategy = Strategy.lookahead
    return m_config


def proportional_config_without_fuse():
    m_config = Configuration()
    m_config.strategy = Strategy.proportional
    m_config.fuse_single_qubit_gates = False
    return m_config


def naive_config_without_fuse():
    m_config = Configuration()
    m_config.strategy = Strategy.naive
    m_config.fuse_single_qubit_gates = False
    return m_config


def lookahead_config_without_fuse():
    m_config = Configuration()
    m_config.strategy = Strategy.lookahead
    m_config.fuse_single_qubit_gates = False
    return m_config


def proportional_config_without_optimizations():
    m_config = Configuration()
    m_config.strategy = Strategy.proportional
    m_config.fuse_single_qubit_gates = False
    m_config.reconstruct_swaps = False
    return m_config


def naive_config_without_optimizations():
    m_config = Configuration()
    m_config.strategy = Strategy.naive
    m_config.fuse_single_qubit_gates = False
    m_config.reconstruct_swaps = False
    return m_config


def lookahead_config_without_optimizations():
    m_config = Configuration()
    m_config.strategy = Strategy.lookahead
    m_config.fuse_single_qubit_gates = False
    m_config.reconstruct_swaps = False
    return m_config


# Define constants
COLUMNS_NAMES = ['circuit', 'naive', 'proportional', 'lookahead', 'naive_without_fuse', 'proportional_without_fuse',
                 'lookahead_without_fuse', 'naive_without_optimizations', 'proportional_without_optimizations',
                 'lookahead_without_optimizations', 'nodes_naive', 'nodes_proportional', 'nodes_lookahead',
                 'nodes_naive_without_fuse', 'nodes_proportional_without_fuse', 'nodes_lookahead_without_fuse',
                 'nodes_naive_optimizations', 'nodes_proportional_optimizations', 'nodes_lookahead_optimizations']
PATH_TEST = ["transpiled", "remove1", "remove3"]
EXTENSION_MAP = {
    "transpiled": "_transpiled.qasm",
    "remove1": "_transpiled_removed_1_7.qasm",
    "remove3": "_transpiled_removed_3_7.qasm",
}
PATH_BASE = "../Circuits/"
PATH_ORIGINAL = "original"
PATH_DATABASE = "../Results/"
CONFIGS = [naive_config, proportional_config, lookahead_config,
           naive_config_without_fuse, proportional_config_without_fuse, lookahead_config_without_fuse,
           naive_config_without_optimizations, proportional_config_without_optimizations,
           lookahead_config_without_optimizations]


# Get the names of the circuits
path_original = PATH_BASE + PATH_ORIGINAL
circuits_names = [f for f in listdir(path_original) if isfile(join(path_original, f))]
total_circuits = len(circuits_names)
database = [None for _ in range(len(PATH_TEST))]

# Setting up the data gathering
results = None
index_database = 0

# Do the tests
print("Starting Tests")
for path_test in PATH_TEST:

    # Data Gathering
    index_circuit = 0

    for circuit_name in circuits_names:

        # Calculate circuits paths
        path_original_circuit = path_original + "/" + circuit_name
        path_compiled_circuit = PATH_BASE + path_test + "/" + circuit_name[:-5] + EXTENSION_MAP[path_test]

        results = np.empty(len(COLUMNS_NAMES), dtype=object)
        results[0] = circuit_name

        # Set index for inserting data
        index_config = 1

        for make_config in CONFIGS:

            # Set dedicated verification strategy
            config = make_config()

            # Verify the compilation result
            result = verify(path_original_circuit, path_compiled_circuit, config)
            result = json.loads(str(result))
            results[index_config] = result["statistics"]["verification_time"]
            results[index_config + len(CONFIGS)] = result["statistics"]["max_nodes"]

            print("Verified")

            index_config = index_config + 1

        data = pd.DataFrame(results, columns=COLUMNS_NAMES)
        data.to_csv(PATH_DATABASE + path_test + '_' + circuit_name + '.csv', index=False)
        index_circuit = index_circuit + 1
