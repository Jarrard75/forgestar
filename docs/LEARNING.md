# LEARNING

# Forgestar Learning Roadmap

Forgestar uses practical projects as the primary learning method.

The goal is not to complete isolated tutorials or rely on libraries that hide the concepts being studied. When a structure, algorithm, parser, or numeric representation is part of the learning objective, it should be implemented directly and tested against observable results.

This file answers:

> **What do I need to learn next, and why?**

Detailed implementation plans belong in the active project’s `README.md`.

## Learning Principles

* Learn concepts through working projects.
* Implement learning-critical logic directly where reasonable.
* Use libraries and system interfaces for concerns outside the current learning objective.
* Finish a working milestone before expanding its scope.
* Add data structures and algorithms when a project creates a genuine need for them.
* Implement each important structure or algorithm at least once before relying on a standard implementation.
* Measure performance rather than assuming which algorithm is faster.
* Prefer a small amount of deeply understood code over a large amount of assembled code.
* Treat future topics as optional until the active project requires them.

---

# Current Focus

## Language

**C**

## Active Learning Project

**Text Calculator**

## Immediate Objective

Refresh foundational C knowledge, then build a calculator that grows from simple arithmetic into expression parsing, custom numeric representations, arbitrary-precision arithmetic, algorithm selection, diagnostics, and performance testing.

---

# Phase 1: C Fundamentals Refresher

The first phase should be brief but complete enough to expose weak areas before the calculator begins.

## Compilation and Program Structure

### Objectives

* Understand the compile and link process
* Organize code across source and header files
* Understand declarations and definitions
* Use compiler warnings consistently
* Understand the role of the preprocessor
* Build programs with repeatable commands
* Read compiler and linker errors

### Practice Topics

* `main`
* Source files
* Header files
* Include guards
* Function declarations
* Object files
* Linking
* Preprocessor directives
* Compiler warnings

### Completion Criteria

* Build a multi-file C program
* Explain the difference between compilation and linking
* Resolve common compiler and linker errors
* Maintain a small repeatable build process

---

## Types and Numeric Behavior

### Objectives

* Refresh C’s built-in numeric types
* Understand signed and unsigned values
* Understand integer limits
* Understand implicit and explicit conversions
* Recognize overflow and truncation risks
* Understand integer division
* Understand floating-point limitations
* Use fixed-width integer types where appropriate

### Practice Topics

* Integer types
* Floating-point types
* `size_t`
* Fixed-width integers
* Signed and unsigned comparison
* Type conversion
* Numeric limits
* Overflow
* Underflow
* Bitwise operators
* Bit shifting

### Completion Criteria

* Identify the range of commonly used numeric types
* Detect when a parsed value cannot fit into a target type
* Explain why bit shifting does not by itself create arbitrary-precision numbers
* Choose an appropriate built-in type for a known numeric range

---

## Control Flow and Functions

### Objectives

* Refresh branching and loops
* Write small functions with clear responsibilities
* Understand parameter passing
* Understand return values and error reporting
* Use scope intentionally
* Avoid unnecessary global state

### Practice Topics

* `if`
* `switch`
* `for`
* `while`
* `do while`
* Function parameters
* Return values
* Scope
* Storage duration
* Recursion

### Completion Criteria

* Break a small program into focused functions
* Validate input through explicit logic branches
* Return useful error information
* Use recursion only where it improves the solution

---

## Arrays, Strings, and Pointers

### Objectives

* Refresh array behavior
* Understand the relationship between arrays and pointers
* Process null-terminated strings safely
* Traverse memory using indices and pointers
* Understand pointer arithmetic
* Distinguish between values, addresses, and referenced data
* Recognize common string and buffer errors

### Practice Topics

* Fixed arrays
* Character arrays
* Null terminators
* Pointer dereferencing
* Pointer arithmetic
* Array decay
* String length
* String comparison
* Manual numeric parsing
* Buffer boundaries

### Completion Criteria

* Parse characters from a string without relying entirely on conversion helpers
* Safely copy and compare bounded strings
* Explain ownership and lifetime for every pointer used
* Avoid reading or writing outside an array

---

## Structs, Enums, and Data Modeling

### Objectives

* Group related values into meaningful structures
* Represent categories and states with enums
* Pass structures between functions
* Understand structure layout at a practical level
* Separate data representation from operations

### Practice Topics

* `struct`
* `enum`
* `typedef`
* Nested structures
* Structure pointers
* Arrays of structures
* Tagged data
* Basic unions where appropriate

### Completion Criteria

* Define a token type using structures and enums
* Represent valid and invalid program states clearly
* Avoid replacing meaningful data models with loosely related variables

---

## Dynamic Memory

### Objectives

* Allocate and release memory intentionally
* Understand stack and heap lifetime
* Resize dynamic storage
* Track capacity and used length
* Handle allocation failures
* Prevent leaks and invalid memory access

### Practice Topics

* `malloc`
* `calloc`
* `realloc`
* `free`
* Ownership
* Capacity growth
* Shallow and deep copying
* Memory leaks
* Dangling pointers
* Double frees

### Completion Criteria

* Build a resizable array
* Document who owns allocated memory
* Handle failed allocations
* Verify that a program releases all owned memory

---

## Files, Input, and Command-Line Programs

### Objectives

* Read input from the terminal
* Accept command-line arguments
* Read expressions from files
* Write results and diagnostics
* Detect file and input errors

### Practice Topics

* Standard input
* Standard output
* Standard error
* Command-line arguments
* Text files
* End-of-file handling
* Line-oriented input
* File error handling

### Completion Criteria

* Evaluate an expression supplied as an argument
* Read multiple expressions from a file
* Write normal output and diagnostics separately
* Handle missing or unreadable files cleanly

---

## Debugging, Testing, and Measurement

### Objectives

* Debug incorrect behavior systematically
* Detect memory problems
* Write repeatable tests
* Separate correctness testing from performance testing
* Measure execution time
* Compare factual results across implementations

### Practice Topics

* Debugger usage
* Assertions
* Compiler warnings
* Sanitizers
* Known-answer tests
* Boundary tests
* Invalid-input tests
* Timing
* Benchmarks
* Regression tests

### Completion Criteria

* Reproduce and isolate a defect
* Run a repeatable test set
* Detect memory errors using development tools
* Record timing results without mixing them with correctness claims

---

# Phase 2: Foundational Algorithms

These topics should begin after the basic syntax and memory refresher, but they should not delay the calculator for an extended period.

## Complexity

### Objectives

* Understand time complexity
* Understand space complexity
* Compare algorithms by input growth
* Distinguish theoretical complexity from measured performance
* Recognize constant-factor and allocation costs

### Initial Topics

* Constant time
* Linear time
* Logarithmic time
* Linearithmic time
* Quadratic time
* Best, average, and worst cases
* Auxiliary memory usage

### Completion Criteria

* Describe the expected growth of an algorithm
* Explain why a theoretically faster algorithm may lose on small inputs
* Compare measured results with expected complexity

---

## Searching

### Initial Algorithms

* Linear search
* Binary search

### Objectives

* Implement both algorithms directly
* Understand the sorted-input requirement for binary search
* Compare behavior across input sizes
* Search arrays of numbers and structures
* Support custom comparisons

### Calculator Relevance

Searching may later support:

* Operator lookup
* Function lookup
* Variable lookup
* Token classification tables
* Cached values

---

## Sorting

### Initial Algorithms

* Bubble sort as a teaching example
* Insertion sort
* Merge sort
* Quicksort after the earlier algorithms are understood

### Objectives

* Implement each selected algorithm directly
* Understand stable and unstable sorting
* Compare in-place and additional-memory approaches
* Use comparison functions
* Measure performance across different input distributions

### Calculator Relevance

Sorting is not required for the calculator MVP. It remains an early algorithm exercise because it supports general data-processing knowledge and future projects.

It should not become a long prerequisite phase.

---

# Phase 3: Calculator Milestones

Each milestone must end with a working, testable program.

## Calculator 0.1 — Basic Arithmetic

### Required Knowledge

* Numeric types
* Strings
* Basic parsing
* Branching
* Functions
* Error handling

### Learning Objectives

* Read two operands and one operator
* Parse numeric text
* Perform basic arithmetic
* Reject malformed input
* Handle division by zero
* Detect values outside the supported range

### Supported Scope

* Addition
* Subtraction
* Multiplication
* Division
* A small built-in numeric range

---

## Calculator 0.2 — Manual Numeric Parsing

### Required Knowledge

* Character processing
* Arrays
* Pointers
* Numeric limits
* Overflow detection

### Learning Objectives

* Convert numeric characters into an integer value
* Handle signs
* Reject invalid characters
* Detect overflow during parsing
* Avoid treating string conversion as a simple cast

### Supporting Exercises

* Parse unsigned decimal integers
* Parse signed decimal integers
* Convert integers back into text
* Compare manual parsing with standard conversion functions

---

## Calculator 0.3 — Tokenization

### Required Knowledge

* Structs
* Enums
* Dynamic arrays
* Memory ownership
* Character classification

### Learning Objectives

* Break an expression into typed tokens
* Represent numbers, operators, and delimiters
* Track token position
* Detect invalid input
* Store an unknown number of tokens

### Data Structure

* Resizable token array

### Diagnostics

* Print input text
* Print identified tokens
* Print token types and positions
* Report tokenization errors

---

## Calculator 0.4 — Expression Evaluation

### Required Knowledge

* Operator precedence
* Stacks
* Queues or output sequences
* Algorithmic complexity
* Structured error handling

### Learning Objectives

* Evaluate multiple operations
* Apply precedence correctly
* Support parentheses
* Support unary operators
* Detect incomplete or contradictory expressions

### Data Structures

* Operator stack
* Value stack
* Token output sequence

### Candidate Algorithms

* Shunting-yard conversion
* Direct precedence-based parsing

The selected approach should be implemented and understood rather than treated as a black box.

---

## Calculator 0.5 — Expression Trees

### Required Knowledge

* Trees
* Recursion
* Dynamic memory
* Ownership
* Tree traversal

### Learning Objectives

* Build an expression tree
* Represent operators and values as nodes
* Traverse and evaluate the tree
* Print a readable representation of the parsed expression
* Release the entire tree safely

### Data Structure

* Abstract syntax tree

### Future Use

The tree may later support:

* Variables
* Functions
* Repeated evaluation
* Expression optimization
* Alternate output formats

---

## Calculator 0.6 — Batch Test Corpus

### Required Knowledge

* File I/O
* Test organization
* Error reporting
* Result comparison

### Learning Objectives

* Read multiple expressions from files
* Compare results with known answers
* Separate passing, failing, and invalid cases
* Produce a repeatable solution report
* Preserve failing cases for regression testing

### Test Categories

* Normal expressions
* Boundary values
* Invalid input
* Overflow cases
* Parentheses
* Unary operators
* Whitespace variations
* Division by zero

### Guardrail

The calculator should not generate its own expected answers and then use those answers as proof of correctness.

Expected results must come from an independent source, manually verified cases, or mathematical properties.

---

## Calculator 0.7 — Numeric Classification

### Required Knowledge

* Numeric limits
* Tagged representations
* Enums and unions
* Conversion rules
* Overflow detection

### Learning Objectives

* Inspect numeric literals before evaluation
* Select the smallest safe supported representation
* Distinguish native values from large values
* Dispatch operations based on numeric representation
* Convert between supported representations safely

### Possible Representations

* Native signed integers
* Native unsigned integers
* Larger built-in integer types
* Custom arbitrary-precision integers

---

## Calculator 0.8 — Arbitrary-Precision Integers

### Required Knowledge

* Dynamic arrays
* Numeric bases
* Carry and borrow
* Sign representation
* Memory ownership
* Algorithmic complexity

### Learning Objectives

* Store integers larger than built-in C types
* Parse large decimal input
* Convert large values back into decimal text
* Normalize internal values
* Compare large integers
* Handle positive and negative values

### Initial Operations

* Comparison
* Addition
* Subtraction
* Multiplication

### Deferred Operations

* Division
* Remainder
* Exponents
* Roots
* Arbitrary-precision decimals

---

## Calculator 0.9 — Multiple Arithmetic Algorithms

### Required Knowledge

* Benchmarking
* Complexity analysis
* Recursion
* Memory tradeoffs
* Algorithm dispatch

### Learning Objectives

* Implement more than one algorithm for selected operations
* Compare correctness across implementations
* Benchmark different operand sizes
* Identify crossover points
* Select an algorithm based on measured results

### Initial Candidate

Multiplication may progress through:

* Native multiplication
* Grade-school multiplication
* A more advanced large-number multiplication algorithm

An advanced algorithm should be added only after the simpler version is correct and measured.

---

## Calculator 1.0 — Diagnostic and Benchmark Modes

### Required Knowledge

* Program configuration
* Timing
* Structured output
* Benchmark design
* Statistical caution

### Learning Objectives

* Print input tokens
* Print processed or output tokens
* Report the selected numeric representation
* Report the selected algorithm
* Measure tokenization time
* Measure parsing time
* Measure evaluation time
* Run controlled benchmark sets
* Compare results across input sizes

### Guardrails

* Diagnostic output should be optional.
* Timing should not change normal results.
* Correctness must be established before optimization.
* A faster result is not useful if it is less reliable.

---

## Calculator 1.x — Generated and Property-Based Tests

### Required Knowledge

* Random generation
* Input grammars
* Reproducible seeds
* Mathematical invariants
* Failure reduction

### Learning Objectives

* Generate valid expressions
* Generate deliberately invalid expressions
* Reproduce failures from a stored seed
* Check mathematical properties
* Preserve generated failures as regression tests
* Compare independent implementations where appropriate

### Example Properties

* Addition is commutative
* Multiplication is commutative
* Adding zero preserves a value
* Multiplying by one preserves a value
* Subtracting a number from itself produces zero
* Parsing and printing a value should preserve it

### Guardrail

Keep the generator calculator-specific until another project demonstrates a real reusable need.

---

# Data Structures Introduced by Need

| Structure                | First Likely Use                          |
| ------------------------ | ----------------------------------------- |
| Fixed array              | Basic parsing exercises                   |
| Dynamic array            | Token storage                             |
| Stack                    | Operators and values                      |
| Queue or output sequence | Expression conversion                     |
| Tree                     | Parsed expressions                        |
| Tagged union             | Multiple numeric representations          |
| Hash table               | Variables or function lookup              |
| Linked list              | Educational comparison or a later feature |
| Heap or priority queue   | Later algorithm study or another project  |
| Graph                    | Version control or game-related projects  |

Not every structure needs to be forced into the calculator.

A structure should be added when:

1. A feature genuinely benefits from it, or
2. It is being implemented as a deliberate, bounded learning exercise.

---

# Algorithm Study Rule

For each major algorithm:

1. Understand the problem it solves.
2. Implement a straightforward version.
3. Test correctness.
4. Analyze expected complexity.
5. Measure actual performance.
6. Compare it with at least one alternative where useful.
7. Use it in a real feature where appropriate.
8. Record what was learned.

The goal is not to memorize source code. The goal is to understand the tradeoffs well enough to choose or design an appropriate solution.

---

# Current Study Order

## Immediate

1. Compilation and program structure
2. Types and numeric behavior
3. Control flow and functions
4. Arrays, strings, and pointers
5. Structs and enums
6. Dynamic memory
7. Debugging and testing
8. Basic complexity
9. Linear and binary search
10. Insertion and merge sort

## Then

11. Calculator 0.1
12. Calculator 0.2
13. Calculator 0.3
14. Stacks and queues
15. Calculator 0.4
16. Trees and recursion
17. Calculator 0.5
18. File-based testing
19. Calculator 0.6
20. Numeric representation and arbitrary precision
21. Calculator 0.7 and later milestones

The early algorithm exercises should support the learning process without postponing the first calculator milestone unnecessarily.

---

# Completion Standard

A topic is considered learned well enough to advance when I can:

* Explain the concept in my own words
* Implement a basic version without copying a complete solution
* Test normal and abnormal cases
* Identify its major limitations
* Recognize where it applies in a real project
* Debug the most common failures
* Return to the implementation later and still understand it

Mastery is not required before moving forward. Topics will be revisited as the calculator becomes more complex.

---

# Deferred Learning Tracks

These will be added when their associated project becomes active.

* Secure randomness and password generation
* Applied cryptography and secure storage
* Web development
* Databases
* Homelab application deployment
* Networking
* C++
* Game development
* Graphics and engine systems
* Filesystems and version-control internals

