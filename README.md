# https://daler.github.io/blender-for-3d-printing/contents.html

These materials are for an introductory class on Blender for 3D printing.

## About the docs
Docs are written as ``.rst`` files, rendered into HTML using [Sphinx](http://www.sphinx-doc.org/en/stable/) using some templates and CSS from the
official [Blender manual](https://www.blender.org/manual/), and uploaded to
the ``gh-pages`` branch on github using the ``build-docs.sh`` script so they
can be viewed at https://daler.github.io/blender-for-3d-printing/contents.html.

To build the docs, assuming you have Python (with pip) and Git installed:

```bash

# clone the repo
git clone https://github.com/daler/blender-for-3d-printing.git
cd blender-for-3d-printing

# install requirments (currently just Sphinx)
pip install -r requirements.txt

# build the docs
make html

```

The docs are then available at `build/html/contents.html`


Ryan Dale 2016 [dalerr@niddk.nih.gov] under [CC-BY](https://creativecommons.org/licenses/by/4.0/).

