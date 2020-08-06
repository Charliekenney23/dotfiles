# assert that we're using iterm, if not, open it.
if [[ "$LC_TERMINAL" != "iTerm2" ]]; then
  osascript -e 'display notification "User iTerm instead" with title "Terminal" sound name "basso"'
  open -a "/Applications/iTerm.app"
fi

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
for file in ~/.{path,prompt,aliases,functions,completion}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# zsh setup
autoload bashcompinit

