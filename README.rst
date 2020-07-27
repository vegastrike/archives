Archives
========

This is a public archive of some of the Vega Strike Gitter Rooms.

Tooling
-------

This repository uses the a version of https://github.com/minrk/archive-gitter that
has a few enhancements for our purposes to limit the number of Gitter rooms being
archived.

.. note:: The enhancements have been contributed back; if they are accepted we'll use
    the version from the original author.

To help with operating the tool, which is written for Python3, there are a couple
helper scripts provided here:

1. setup.sh
2. run.sh

Configuration
-------------

To install the tool one will need the following:

* git
* Python3
* virtualenv
* Bash

Simply running `setup.sh` will grab the required tools and do the appropriate installation
so that `run.sh` can operate as expected.

.. code-block:: bash

    $ ./setup.sh

You will also need to go to https://developer.gitter.im/apps to get your Gitter API Key
for the tooling to use. Enter the Gitter API Key into `config.json` as the value for the
`token`. The `config.json` will be created if it doesn't exist; or you can copy `config.template.json`
if you need to reset it.

Operation
---------

For the most part you will only need to use `run.sh` which will automatically run `setup.sh`
for you. The first time you run it with our default configuration provided by `config.template.json`
it will only output the rooms that you can see. Simply identify rooms you want to archive
and add them to the list of rooms in your `config.json`:

```json
{
	"token": "<gitter API key>",
	"all": false,
	"rooms": [
		"vegastrike/community"
    ]
}
```

Once there are some rooms configured then it will archive those rooms.
