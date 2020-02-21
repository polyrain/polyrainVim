# polyrain Vim installation instructions

Run the following shell command after cloning this repo in your home directory:

```
cp -r ./polyrainVim/.vim ./
cp ./polyrainVim/.vimrc ./
```

Then, type vim <file> to open vim. Once opened, type the following

`:PlugInstall`

The plugins should compile and you should be done!

Your vim should now look like this:

![Final vim](https://i.imgur.com/vElamlq.png)

## Usage

nerdtree is config'd to open on *Ctrl + o*. You can modify this in the .vimrc.

# Troubleshooting

## YCM compiled with python2/core dumped

Simply run `brew install python` if it's not already downloaded, then run the following shell command:

`python3 ./.vim/plugged/youcompleteme/install.py`


## Vim keeps crashing!

If you're on OSX this is a known issue due to using the default version of Vim. Simply run:

`brew install nvim` to fix any issues, or set up your vim to only use the HomeBrew version.

## .vim already exists!

If this is the case copy across the files in the repo with the following:

`cp -r ./polyrainVim/.vim/ ./.vim/`
