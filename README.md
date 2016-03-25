# OpenAstronomy conda channel

## Installing packages

To add this channel to your list of default conda channels:
`conda config --add channels openastronomy`

To install a single package from this channel:
`conda install -c openastronomy <package>`

## List of packages

The list of packages on this channel is at
https://anaconda.org/openastronomy/packages

It includes all of the packages on these conda channels:

+ `astropy`: channel for [astropy](http://astropy.org) [affiliated packages](http://astropy.org/affiliated)

## How can I add my package?

Open a pull request to add your package to `requirements.yml`. Package authors
are responsible for making any changes necessary to get their package to
build.

We'll merge any successful build of open source astronomy software, but we
encourage package authors to check out the the
[OpenAstronomy](https://OpenAstronomy.org) member collaborations and consider
making your package an affiliate of one of them.

Doing so increases the exposure of your package and connects you to developers
with similar interests.
