from jkq.qcec import Configuration, Strategy, verify

# Setting up circuits
cirq_original = '../Circuits/original/alu1_198.real'
cirq_compiled = '../Circuits/neq1/alu1_198.real'

# set dedicated verification strategy
config = Configuration()
config.strategy = Strategy.compilationflow

# verify the compilation result
result = verify(cirq_original, cirq_compiled, config)
print(result)
