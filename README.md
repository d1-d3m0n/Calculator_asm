# 🧮 Assembly Calculator

A simple calculator written in x86 Assembly (NASM syntax) that performs basic arithmetic operations.  
I created this project to understand the inner workings of computers and sharpen my low-level programming skills.

## 📂 File

- `calculator.asm`: The main source file containing the calculator logic.

## ⚙️ Features

- Supports basic arithmetic: addition, subtraction, multiplication, and division.
- Built to be lightweight, fast, and educational.
- Learn-by-doing style implementation to help others dive into Assembly.

## 🛠️ Requirements

- NASM (Netwide Assembler)
- Linux environment (for easiest execution)

## 🧪 Compilation & Execution

1. **Assemble the code:**

bash
```nasm -f elf32 calculator.asm -o calculator.o```
Link the object file to create an executable:
```ld -m elf_i386 calculator.o -o calculator```
Run the program:
```./calculator```
