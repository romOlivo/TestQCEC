# Testing QCEC
This project has been developed with the aim of testing 
and understanding the QCEC tool. QCEC is a tool to 
verify if the compilation of quantum circuits (like 
Qiskit) has been made correctly.

## Usage
The project was developed under Python 3.9. To use the
test in the project, the first thing to do is 
installing the dependencies. For this purpose, in the 
main directory of the project, we execute the 
following code on the console
```
pip install --upgrade pip
pip install -r requirements.txt
```
To check if the dependencies was installed correctly, 
we execute the file `Test/DefaultTest.y`. The program 
should print
```
{
  "circuit1": {
    "n_gates": 7,
    "n_qubits": 2,
    "name": ""
  },
  "circuit2": {
    "n_gates": 5,
    "n_qubits": 20,
    "name": ""
  },
  "equivalence": "equivalent",
  "statistics": {
    "max_nodes": 41,
    "method": "G -> I <- G'",
    "preprocessing_time": 3.79e-05,
    "strategy": "compilation flow",
    "verification_time": 0.0001363
  }
}
```
