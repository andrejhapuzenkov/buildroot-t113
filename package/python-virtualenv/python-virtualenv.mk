################################################################################
#
# python-virtualenv
#
################################################################################

PYTHON_VIRTUALENV_VERSION = 20.29.2
PYTHON_VIRTUALENV_SOURCE = virtualenv-$(PYTHON_VIRTUALENV_VERSION).tar.gz
PYTHON_VIRTUALENV_SITE = https://files.pythonhosted.org/packages/f1/88/dacc875dd54a8acadb4bcbfd4e3e86df8be75527116c91d8f9784f5e9cab
PYTHON_VIRTUALENV_DEPENDENCIES = host-python-hatch-vcs
PYTHON_VIRTUALENV_LICENSE = MIT
PYTHON_VIRTUALENV_LICENSE_FILES = LICENSE
PYTHON_VIRTUALENV_SETUP_TYPE = setuptools

$(eval $(python-package))
