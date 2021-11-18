from jkq.qcec import Configuration, Strategy, verify
import json
import sys

PATH_TEST = ["transpiled", "remove1", "remove3"]
PATH_BASE = "../Circuits/"
PATH_ORIGINAL = "original"
EXTENSION_MAP = {
    "transpiled": "_transpiled.qasm",
    "remove1": "_transpiled_removed_1_7.qasm",
    "remove3": "_transpiled_removed_3_7.qasm",
}

if len(sys.argv) <= 1:
    print('Need at least one parameter (name of the circuit). Use --help for more info.')
    exit(-1)

if '-h' in sys.argv or '--help' in sys.argv:
    print('\nUsage of the script:\n')
    print('python UniqueTest.py circuit_name (parameters)\n')
    print('Parameters:')
    print('--naive   ----------->   Set the naive strategy')
    print('--lookahead   ------->   Set the naive lookahead')
    print('--proportional   ---->   Set the naive proportional (default)')
    print('--no-fuse   --------->   disable fuse of single qubits optimization')
    print('--no-reconstruct   -->   disable reconstruct swaps optimization')
    print('--transpiled   ------>   use transpiled circuits to compare (default)')
    print('--remove1   --------->   use compiled circuits with 1 removed gate to compare')
    print('--remove3   --------->   use compiled circuits with 3 removed gate to compare')
    exit(0)


path_original = PATH_BASE + PATH_ORIGINAL
path_index = 0

config = Configuration()
if '--naive' in sys.argv:
    config.strategy = Strategy.naive
elif '--lookahead' in sys.argv:
    config.strategy = Strategy.lookahead
else:
    config.strategy = Strategy.proportional

if '--remove3' in sys.argv:
    path_index = 2
elif '--remove1' in sys.argv:
    path_index = 1
else:
    path_index = 0

if '--no-fuse' in sys.argv:
    config.fuse_single_qubit_gates = False

if '--no-reconstruct' in sys.argv:
    config.reconstruct_swaps = False

print("Optimizations: Fuse = {0} --- Reconstruct = {1}"
      .format(config.fuse_single_qubit_gates, config.reconstruct_swaps))

circuit_name = sys.argv[1] + '.real'
path_test = PATH_TEST[path_index]

path_original_circuit = path_original + "/" + circuit_name
path_compiled_circuit = PATH_BASE + path_test + "/" + circuit_name[:-5] + EXTENSION_MAP[path_test]

result = verify(path_original_circuit, path_compiled_circuit, config)
result = json.loads(str(result))
print(result)
