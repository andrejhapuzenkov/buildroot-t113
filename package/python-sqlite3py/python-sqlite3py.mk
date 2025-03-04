################################################################################
#
# python-sqlite3py
#
################################################################################

PYTHON_SQLITE3PY_VERSION = 1.0.2
PYTHON_SQLITE3PY_SOURCE = sqlite3py-$(PYTHON_SQLITE3PY_VERSION).tar.gz
PYTHON_SQLITE3PY_SITE = https://files.pythonhosted.org/packages/d6/84/27178806be000a133f45c02a00decbb9f92b656e24f42f47630d24205cef
PYTHON_SQLITE3PY_LICENSE = MIT
PYTHON_SQLITE3PY_LICENSE_FILES = LICENSE
PYTHON_SQLITE3PY_SETUP_TYPE = setuptools

$(eval $(python-package))
