namespace Sample {

    @EntryPoint()
    operation RandomBit() : Result {
        // Qubits are only accessible for the duration of the scope where they
        // are allocated and are automatically released at the end of the scope.
        use qb = Qubit();

        // Set the qubit in superposition by applying a Hadamard transformation.
        H(qb);

        // Measure the qubit. There is a 50% probability of measuring either 
        // `Zero` or `One`.
        let result = M(qb);

        // Reset the qubit so it can be safely released.
        Reset(qb);
        return result;
    }
}