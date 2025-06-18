# PyAstronvim: Personal Neovim Configuration for Python Development

## Introduction
This repository contains a personalized Neovim configuration tailored specifically for Python development. Built on top of [AstroNvim](https://github.com/AstroNvim/AstroNvim), it integrates essential plugins and custom settings to enhance the Python coding experience in Neovim.

## Features
- **Python Virtual Environment Management**: The `venv-selector` plugin allows you to easily switch between Python virtual environments directly within Neovim.
- **In - Editor Code Execution**: With the `compiler.nvim` plugin, you can run Python code without leaving the Neovim environment.
- **Rich Plugin Ecosystem**: Leveraging AstroNvim's plugin management system, it includes a wide range of useful plugins for code editing, debugging, and more.

## Prerequisites
- **Neovim**: Version 0.8 or higher is recommended.
- **Git**: Required for cloning the repository and managing plugins.

## Installation

### Step 1: Backup Your Existing Neovim Configuration
Before proceeding, it's a good idea to back up your current Neovim configuration and related data. Run the following commands in your terminal:
```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Step 2: Create or Clone the User Repository
You have two options to get the configuration files:

#### Option 1: Create a New User Repository from the Template
Press the "Use this template" button above to create a new repository to store your user configuration.

#### Option 2: Clone the Repository Directly
If you don't want to track your user configuration in GitHub, you can clone this repository directly:
```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```
Replace `<your_user>` and `<your_repository>` with your actual GitHub username and repository name.

### Step 3: Start Neovim
Once the repository is cloned, start Neovim by running the following command in your terminal:
```shell
nvim
```
Neovim will automatically detect the new configuration and start installing the necessary plugins.

## Usage

### Changing the Theme
To change the theme, use the following key combination:
```
<Leader>ft
```

### GitHub Copilot Authentication
To authenticate GitHub Copilot, run the following command in Neovim:
```
:Copilot auth
```

### Switching Python Virtual Environments
You can switch between Python virtual environments using the `venv - selector` plugin. Use the following key mappings:
- `<leader>vs`: Open the `VenvSelector` to pick a virtual environment.
- `<leader>vc`: Retrieve the virtual environment from the cache (the one previously used for the same project directory).

### Running Python Code
Use the `compiler.nvim` plugin to run Python code. You can use the following key mappings defined in the `lua/plugins/astrocore.lua` file:
- `<F6>`: Open the compiler.
- `<F18>` (Shift + <F6>): Stop and restart the compiler.
- `<F19>`: Toggle the compiler results window.

## Use case

### Markdown Usage
While this configuration is mainly focused on Python development, Neovim can still be used effectively for Markdown editing. You can leverage the basic text - editing capabilities of Neovim, and with appropriate syntax highlighting, you'll have a clean and efficient Markdown writing environment.

### How to Select Python VENV
- **Manual Selection**: Press `<leader>vs` to open the `VenvSelector`. Navigate through the list of available virtual environments using the arrow keys and press Enter to select the desired one.
- **Cached Selection**: If you've used a virtual environment for the current project directory before, press `<leader>vc` to quickly retrieve it from the cache.

### 1. Python Standalone File
- **Running the File**: Open your Python standalone file in Neovim. Press `<F6>` to open the compiler, and it will execute the Python script. You can view the results in the compiler results window. If you need to stop and restart the execution, press `<F18>`. To toggle the visibility of the results window, use `<F19>`.
- **Using the Right VENV**: Before running the file, make sure you've selected the appropriate Python virtual environment using the `venv - selector` plugin as described above.

### 2. FastApi
- **Development Setup**: Create a new virtual environment for your FastApi project and select it in Neovim using the `venv - selector` plugin.
- **Running the Server**: In Neovim, open the main Python file that starts your FastApi server. Press `<F6>` to run the file, and the FastApi server should start. You can access your application at the specified URL in your web browser.
- **Debugging**: For debugging FastApi applications, you can set breakpoints in your code and use a debugger plugin. Make sure your virtual environment has the necessary debugging tools installed.

### 3. Pytest
- **Test Setup**: Create a test file following the Pytest naming conventions in your project directory. Make sure your test functions start with `test_`.
- **Running Tests**: You can use the `compiler.nvim` plugin to run your Pytest tests. Open the test file or the directory containing the test files in Neovim and press `<F6>` to execute the tests. The results will be shown in the compiler results window.

### 4. Debugger
- **Configuration**: Ensure that your virtual environment has the necessary debugging tools installed, such as `debugpy` if you're using Python.
- **Setting Breakpoints**: In your Python code, set breakpoints at the lines where you want the execution to pause.
- **Starting the Debugger**: There should be a way to start the debugger, which might involve using specific key mappings or commands. Once started, the execution will pause at the breakpoints, allowing you to inspect variables and step through the code.

## Todo
- Jupyter
- Support UV