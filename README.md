# ipynb_drop_output

IPython Notebooks in git repositories.

Based on [http://pascalbugnion.net/blog/ipython-notebooks-and-git.html](this blog post).

Works with ipython notebook version 4.0. and python 2.7.

## Howto add new ipython notebooks to a git repo

### Install the filter script (Linux)

Copy the two scripts (sh and py) into a folder named "scripts" inside your git repo that
you want to track ipython notebooks in.
Run the "install_pyenv_git_filter.sh" script from the scripts directory:
it will change your PATH environmantal variable permanently (a new line will be 
added to your .bashrc file).
Open a new shell to check if the PATH contains this git repo's "scripts" dir.

```sh
$ cd scripts
$ ./install_pyenv_git_filter.sh
$ echo $PATH
```

### Add new notebooks

It is necessary to add a short metadata extension to new notebooks.
You should add this json snippet to the notebooks "metadata" section, either by editing them in a code editor, or by clicking "Edit" and in the menu: "Edit notebook metadata" within the ipython notebook:

```json
"git" : {
    "suppress_outputs" : true
},
```

For examples, have a look at the notebooks in this repo (ipython-notebooks/*.ipynb).

