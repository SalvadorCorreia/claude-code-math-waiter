# claude-code-math-waiter

A local plugin for the Claude Code Desktop App. It opens a standalone math game in Google Chrome while Claude processes a prompt, pauses when Claude requires input, and closes when the task is complete.

## Prerequisites

* macOS
* Google Chrome installed at `/Applications/Google Chrome.app`
* Terminal or iTerm2

## Setup

1. **Clone or create the repository directory**
   Create a folder named `claude-code-math-waiter` and place all files according to the file structure.

2. **Make scripts executable**
   Open your terminal, navigate to the directory, and run:
   ```bash
   chmod +x start_game.sh pause_game.sh stop_game.sh
   ```

3. **Update the game path**
    Open `start_game.sh` and replace `/path/to/game.html` with the absolute path to `game.html` on your system.
    Example:
    ```bash
    GAME_PATH="file:///Users/username/claude-code-math-waiter/game.html"

    ```

4. **Configure terminal focus (Optional)**
    The scripts default to returning focus to `Terminal`. If you use iTerm2, open `pause_game.sh` and `stop_game.sh`, and change `"Terminal"` to `"iTerm"`.

5. **Apply Claude settings**
    Ensure `.claude/settings.json` is located in your project root or global Claude configuration directory, depending on where you want the plugin to operate. Update the paths in `settings.json` to point to the absolute locations of your shell scripts if they are not in the same working directory.

## Usage

Start the Claude Code Desktop App. The workflow triggers automatically based on the `settings.json` event mapping:

* Submitting a prompt opens the game.
* Claude asking for permissions or timing out shifts focus back to your terminal.
* Claude finishing the generation stops the game and closes the window.


