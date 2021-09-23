from Generators.randomlyRemoveGate import RandomlyRemoveGate
from os import listdir
from os.path import isfile, join

# Define constants
PATH_BASE = "../Circuits/"
PATH_ORIGINAL = "original"

# Get the names of the circuits
path_original = PATH_BASE + PATH_ORIGINAL
circuits_names = [f for f in listdir(path_original) if isfile(join(path_original, f))]

RandomlyRemoveGate(circuits_names, PATH_ORIGINAL).generate()
