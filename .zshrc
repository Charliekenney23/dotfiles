# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
for file in ~/.{path,prompt,aliases,functions,completion}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# zsh setup
autoload bashcompinit
