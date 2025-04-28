
# Solid Software Recruitment Task

  
This Flutter application was created as part of the Solid Software recruitment task.

  
## Features

- Displays a centered "Hello there" message on the screen.

- Changes the background color to a random RGB value when the screen is tapped.

- Generates colors without using any external libraries.

- Code quality is ensured and verified using `solid_lints`.

  
## Getting Started

  

First, set up FVM (Flutter Version Manager):

[Getting Started with FVM](https://fvm.app/documentation/getting-started/installation)

  

Specify the Flutter version:

  

```bash

fvm  use  3.29.3

```

  

Then install dependencies and run the app:

  

```bash

fvm  flutter  pub  get

fvm  flutter  run

```

  

## Git Hooks Setup

  

This project uses a pre-commit hook to ensure code quality.

  

Set up Git hooks by running:

  

```bash

git  config  core.hooksPath  .githooks

```

  

## Notes

- Random colors are generated using Dart’s built-in `Random` class.

- The project follows clean code principles, adhering to the DRY and KISS guidelines.
