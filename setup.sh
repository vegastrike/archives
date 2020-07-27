#!/bin/bash
# Install the archive-gitter tool

ARCHIVE_TOOL="https://github.com/BenjamenMeyer/archive-gitter.git"
ARCHIVE_TOOL_BRANCH="enhancement_config-file"

if [ ! -d "tools" ]; then
	mkdir -p "tools"
fi

cd tools

git clone ${ARCHIVE_TOOL}
cd archive-gitter
git checkout ${ARCHIVE_TOOL_BRANCH}
cd ..
cd ..
ln -s tools/archive-gitter/archive-gitter

virtualenv -p `which python3` venv
source venv/bin/activate
pip install -r tools/archive-gitter/requirements.txt

if [ ! -f "config.json" ]; then
cp "config.template.json" "config.json"
printf "Be sure to configure your gitter.im token from https://developer.gitter.im/apps into config.json"
fi
