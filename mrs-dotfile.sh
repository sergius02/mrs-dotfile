#/bin/bash

# Install the dependencies
sh dependencies.sh

# Create the symlinks
sh sym.sh

# Execute post-instalation process
sh post-install.sh
