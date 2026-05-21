# linked-list-top

A clean, from-scratch implementation of a **Singly Linked List** in Ruby. This project was developed to explore low-level data structures, memory logic, and manual pointer manipulation without relying on Ruby's built-in Array methods for core logic.

## Technologies & Tools

- **Linting & Style Guide:** RuboCop - configured to enforce clean code and Ruby best practices

## Concepts Applied

- **Object-Oriented Programming (OOP):** Separation of concerns between the `Node` (data container) and `LinkedList` (structure manager) classes.
- **Pointer Manipulation:** Managing nodes through `@next_node` references to traverse and modify the list.
- **Edge Case Handling:** Logic to manage empty lists, single-node lists, and out-of-bounds index access.

## Features & Methods

The `LinkedList` class includes the following functionality:

- `#append(value)`: Adds a new node containing `value` to the end of the list.
- `#prepend(value)`: Adds a new node containing `value` to the start of the list.
- `#size`: Returns the total number of nodes in the list.
- `#head`: Returns the value of the first node.
- `#tail`: Returns the value of the last node.
- `#at(index)`: Returns the value of the node at the given `index`.
- `#pop`: Removes the first element from the list and returns its value.
- `#contains?(value)`: Returns `true` if the passed-in value is in the list and `false` otherwise.
- `#index(value)`: Returns the index of the node containing value, or `nil` if not found.
- `#to_s`: Represents the LinkedList objects as strings, formatted as: `( value ) -> ( value ) -> ( value ) -> nil`.
- `#insert_at(index, values)`: Inserts one or multiple values at a specific index, shifting subsequent nodes.
- `#remove_at(index)`: Removes the node at the specified index.


