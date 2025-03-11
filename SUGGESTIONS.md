# Suggestions

### Project
Good work, yet patching is required
- CONTRIBUTORS.md - capital letters and `.md` extention
- TASKS.md -  capital letters and `.md` extention
- The script naming is not clear what runs 
  - better to have `setup.sh` or `manage.sh` that leads to `bin/` folder from where you run whatever script you want/need

### README
- Missing link to
  - CONTRIBUTORS.md
  - TASKS.md
- When you guide someone throught README, you always need to give examples. show the clone command

### SCRIPT
- some of strict headers are commented out, assume as a mistake
- you are suppose to use [[ and not [
- use `tmpl` files instead of EOF/EOL
- if script requires sudo, may be it will be better to require $EUID and run the whole script as root
