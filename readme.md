# Open Path

Open Path is a Ruby script to accept a windows-style file path format and open it using finder on mac.

# Installation

Download / install this script by navigating to a directory in your shell which is included in your PATH and 
executing the following:

	gem install clipboard
	curl -L https://github.com/wdembins/open-path/raw/master/open_path.rb > open_path
	chmod 755 open_path

# Script Usage

Executing `open_path '<path>'` will open finder for the given path.

# Using with Automator

Setting up with Automator will allow you to open the link using a service.

## Setup

1. Open Automator and create a new service
2. Add the Run Shell Script action
3. Call executable, passing the input

    ```
    open_path $1
    ```

    Note: open_path will need to be on the path and accessible to the shell.  
    If you are seeing command not found, sourcing the profile (or appropriate config) should fix the issue.
    ```
    source ~/.profile
    open_path $1
    ```
4. Save the service
5. Open application and highlight link
6. Right click, choose service
