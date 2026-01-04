# Pywon Programming Language

**Version:** 0.1.0-beta

Pywon is a simple, easy-to-learn programming language designed for anyone to understand. No complex syntax, no confusing symbols - just plain English commands.

## Features

- ✅ **Simple syntax** - Easy to read and write
- ✅ **Variables** - Store and use data
- ✅ **Math operations** - Add, subtract, multiply, divide
- ✅ **Loops** - Repeat code multiple times
- ✅ **Conditionals** - Make decisions in your code
- ✅ **User input** - Interactive programs
- ✅ **Offline** - Works without internet
- ✅ **Turing complete** - Can solve any computational problem

## Installation

### Quick Install

```bash
curl -o pywon https://raw.githubusercontent.com/jamie949393/pywon/main/pywon
chmod +x pywon
sudo mv pywon /usr/local/bin/
```

### Manual Install

1. Download the `pywon` file
2. Make it executable: `chmod +x pywon`
3. Move to your PATH: `sudo mv pywon /usr/local/bin/`

Or keep it in your project directory and run with `./pywon`

## Quick Start

Create a file called `hello.pywon`:

```pywon
print Hello World
```

Run it:

```bash
pywon hello.pywon
```

## Syntax Guide

### Comments

```pywon
# This is a comment
print Hello  # This is also a comment
```

### Variables

```pywon
set name Alice
set age 25
set city Boston

print Hello $name
print You are $age years old
```

### User Input

```pywon
print What is your name?
input name
print Hello $name
```

### Math Operations

Works with both variables and literal numbers:

```pywon
# Addition
add 5 3 = result
print $result

# Subtraction
sub 10 4 = result
print $result

# Multiplication
multi 6 7 = result
print $result

# Division (returns decimals)
divi 15 2 = result
print $result

# Using variables
set x 10
set y 5
add x y = sum
print $sum

# Mix literals and variables
add x 20 = result
print $result
```

### Loops

Repeat code a specific number of times:

```pywon
loop 5 times
print Hello
loop close

# With variables
set counter 0
loop 10 times
print Count: $counter
add counter 1 = counter
loop close
```

### Conditionals

Make decisions based on conditions:

```pywon
# Numbers: can use >, <, =
set age 20
if $age >18
print You are an adult
end

if $age <18
print You are a minor
end

if $age =18
print You are exactly 18
end

# With else
set score 85
if $score >90
print Grade A
else
print Grade B or lower
end

# Strings: can only use =
set name bob
if $name =bob
print Hello Bob
else
print You are not Bob
end

# Error: Cannot use > or < with strings
# if $name >alice  # This will show an error
```

### Nested Conditionals

```pywon
set x 10
set y 5

if $x >5
print x is greater than 5
if $y <10
print and y is less than 10
end
end
```

## Example Programs

### Calculator

```pywon
print Simple Calculator
print Enter first number:
input num1
print Enter second number:
input num2

add num1 num2 = sum
sub num1 num2 = diff
multi num1 num2 = prod
divi num1 num2 = quot

print Results:
print Addition: $sum
print Subtraction: $diff
print Multiplication: $prod
print Division: $quot
```

### Number Guessing Game

```pywon
print Guess the number (between 1 and 10)
set secret 7

print Enter your guess:
input guess

if $guess =$secret
print Correct! You win!
end

if $guess >$secret
print Too high!
end

if $guess <$secret
print Too low!
end
```

### Countdown Timer

```pywon
print Countdown from 10
set count 10

loop 10 times
print $count
sub count 1 = count
loop close

print Blast off!
```

### Age Checker

```pywon
print Enter your age:
input age

if $age <13
print You are a child
end

if $age >12
if $age <20
print You are a teenager
end
end

if $age >19
print You are an adult
end
```

## Language Reference

### Commands

| Command | Syntax | Description |
|---------|--------|-------------|
| `print` | `print text` | Display text (use `$var` for variables) |
| `input` | `input varname` | Get user input and store in variable |
| `set` | `set varname value` | Create or update a variable |
| `add` | `add x y = result` | Add two numbers |
| `sub` | `sub x y = result` | Subtract two numbers |
| `multi` | `multi x y = result` | Multiply two numbers |
| `divi` | `divi x y = result` | Divide two numbers (returns decimal) |
| `loop` | `loop N times` | Start a loop that repeats N times |
| `loop close` | `loop close` | End a loop |
| `if` | `if condition` | Start a conditional block |
| `else` | `else` | Alternative block if condition is false |
| `end` | `end` | End a conditional block |

### Operators

| Operator | Description | Works with |
|----------|-------------|------------|
| `>` | Greater than | Numbers only |
| `<` | Less than | Numbers only |
| `=` | Equal to | Numbers and strings |

### Data Types

- **Numbers**: `42`, `3.14`, `-5`
- **Strings**: `hello`, `bob`, `world`
- Variables can hold either type

## Requirements

- Unix/Linux system (or WSL on Windows)
- `/bin/sh` (POSIX shell)
- Standard utilities: `awk`, `sed`, `grep`

All of these are pre-installed on most Unix/Linux systems.

## File Extension

Use `.pywon` for your Pywon programs:
- `hello.pywon`
- `calculator.pywon`
- `game.pywon`

## Contributing

This is a beta release. Feedback and contributions are welcome!

## License

MIT License - See LICENSE file for details

## Author

Created by jamie949393

## Version History

- **0.1.0-beta** (2026-01-04)
  - Initial beta release
  - Variables, math, loops, conditionals
  - String and number comparisons
  - Decimal division support
  - Error handling for invalid operations
