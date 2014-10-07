This is a way to turn ipython notebooks into markdown files for your jekyll blog.

The idea is that you will (manually) run `build.sh` to render any ipython notebooks in `_notebooks/` as markdown into your `_drafts/` folder. (These folder names can be changed by editing `config.env`).

## Set up

0. Go to your jekyll blog's root folder, for example:

    ```shell
    cd ~/Sites/blog
    ```

1. Clone this repo into `_notebooks/`

    ```shell
    mkdir -p _notebooks
    cd _notebooks
    git clone https://github.com/mobeets/jekyll-ipython-markdown.git
    ```

2. Edit `config.env` if necessary, then create the specified folders by running `install.sh`:

    ```shell
    cd jekyll-ipython-markdown
    ../install.sh
    ```

## Usage

You can build one `.ipynb` at a time, or all at once.

If you're in your blog's root folder, here's all you do:

```shell
./_notebooks/jekyll-ipython-markdown/build.sh _notebooks/*.ipynb
```

This will build all your ipython notebook files in `_notebooks/` and place the resulting markdown in `_drafts/` and the resulting images in `images/ipython`. (These folder names can be changed by editing `config.env`).

You can also build individual files:

```shell
./_notebooks/jekyll-ipython-markdown/build.sh _notebooks/test.ipynb
```

## Extensions

* Use [fswatch](https://github.com/emcrisostomo/fswatch) to auto-build `.ipynb` files as they change
