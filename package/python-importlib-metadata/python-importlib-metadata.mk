################################################################################
#
# python-importlib-metadata
#
################################################################################

PYTHON_IMPORTLIB_METADATA_VERSION = 8.6.1
PYTHON_IMPORTLIB_METADATA_SOURCE = importlib_metadata-$(PYTHON_IMPORTLIB_METADATA_VERSION).tar.gz
PYTHON_IMPORTLIB_METADATA_SITE = https://files.pythonhosted.org/packages/33/08/c1395a292bb23fd03bdf572a1357c5a733d3eecbab877641ceacab23db6e
PYTHON_IMPORTLIB_METADATA_LICENSE = Apache Software License
PYTHON_IMPORTLIB_METADATA_LICENSE_FILES = LICENSE
PYTHON_IMPORTLIB_METADATA_SETUP_TYPE = setuptools

$(eval $(python-package))
