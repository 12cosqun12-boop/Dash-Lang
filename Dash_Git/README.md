# Dash Programming Language 🚀

Dash is a minimalist, ultra-fast systems programming language built for speed and manual memory management. It is designed to be a lightweight alternative for developers who want low-level control with a clean, terminal-friendly syntax.

Dash uses the **QBE** compiler backend to achieve lightning-fast compilation and tiny executable sizes.

## 🛠 Features
- **Manual Memory Management**: Full control with `moo` (allocate) and `mee` (free).
- **QBE Backend**: High performance without the bloat of LLVM.
- **Fast Compilation**: Compiles in milliseconds.
- **Minimalist Syntax**: Simplified keywords for faster coding.

## 📦 Requirements
To build and run Dash, you need the following tools:

- **QBE**: The compiler backend.
- **GCC**: For linking the assembly output.
- **Binutils**: For assembly and linking.

### Installation (Arch Linux / CachyOS)
\`\`\`bash
sudo pacman -Syu qbe base-devel binutils
\`\`\`

## 🚀 Getting Started

### 1. Write your Dash code (\`main.dash\`)
\`\`\`dash
p =l moo(16)
// Add your logic here
mee(p)
dun 0
\`\`\`

### 2. Compile and Run
\`\`\`bash
# Translate Dash to QBE Intermediate Representation
./src/dc.sh tests/test.dash

# Generate Assembly from QBE
qbe bin/out.ssa -o bin/out.s

# Create Executable
cc bin/out.s -o dash_app

# Run!
./dash_app
\`\`\`

## 📖 Vocabulary (Cheat Sheet)
| Dash | C Equivalent | Description |
| :--- | :--- | :--- |
| \`fun\` | \`int\` | 32-bit Integer |
| \`diod\` | \`void\` | Void type |
| \`moo(n)\` | \`malloc(n)\` | Memory allocation |
| \`mee(p)\` | \`free(p)\` | Free memory |
| \`dun\` | \`return\` | Return statement |
| \`soyle\` | \`printf\` | Output to terminal |

## 🛡 License
Dash is open-source and ready for community contribution.

---
*Created by [12cosqun12](https://github.com/12cosqun12-boop) - 2026*
