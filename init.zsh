# Lazy load the extension
autoload -Uz zgenom-run

# Add description to zgenom help and completion
ZGENOM_EXTENSIONS+=('run:execute a command in the project root (e.g. make)')
