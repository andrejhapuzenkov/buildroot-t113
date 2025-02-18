################################################################################
#
# python-inotify-simple
#
################################################################################

PYTHON_INOTIFY_SIMPLE_VERSION = 1.3.5
PYTHON_INOTIFY_SIMPLE_SOURCE = inotify_simple-$(PYTHON_INOTIFY_SIMPLE_VERSION).tar.gz
PYTHON_INOTIFY_SIMPLE_SITE = https://files.pythonhosted.org/packages/51/41/59ca6011f5463d5e5eefcfed2e7fe470922d3a958b7f3aad95eda208d7d3
PYTHON_INOTIFY_SIMPLE_LICENSE = BSD
PYTHON_INOTIFY_SIMPLE_LICENSE_FILES = LICENSE
PYTHON_INOTIFY_SIMPLE_SETUP_TYPE = setuptools

$(eval $(python-package))
