This is a way to turn ipython notebooks into markdown files for your jekyll blog.

## Set up

0. Go to your jekyll blog's root folder, for example:

    `$ cd ~/Sites/blog`

1. Clone this repo into _notebooks/

    `$ mkdir -p _notebooks`
    `$ cd _notebooks`
    `$ git clone https://github.com/mobeets/jekyll-ipython-markdown.git`

2. Make sure the build and install file are executable

    `$ cd jekyll-ipython-markdown`
    `$ chmod +x install.sh`
    `$ chmod +x build.sh`

3. Edit config.env if necessary, then create the specified folders by running `install.sh`:

    `$ ../install.sh`

## Usage

You can build one `.ipynb` at a time, or all at once.

If you're in your blog's root folder, here's all you do:

    `$ ./_notebooks/jekyll-ipython-markdown/build.sh _notebooks/*.ipynb`

This will build all the files matching `_notebooks/*.ipynb` to look like `_drafts/*.md`. Any images used by these new `.md` files will be placed in your images folder.


You can also build individual files:

    `$ ./_notebooks/jekyll-ipython-markdown/build.sh _notebooks/test.ipynb`
