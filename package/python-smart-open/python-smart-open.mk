################################################################################
#
# python-smart-open
#
################################################################################

PYTHON_SMART_OPEN_VERSION = 7.1.0
PYTHON_SMART_OPEN_SOURCE = smart_open-$(PYTHON_SMART_OPEN_VERSION).tar.gz
PYTHON_SMART_OPEN_SITE = https://files.pythonhosted.org/packages/21/30/1f41c3d3b8cec82024b4b277bfd4e5b18b765ae7279eb9871fa25c503778
#PYTHON_SMART_OPEN_DEPENDENCIES = host-python-babel
PYTHON_SMART_OPEN = MIT License
PYTHON_SMART_OPEN_LICENSE_FILES = LICENSE
PYTHON_SMART_OPEN_SETUP_TYPE = setuptools

$(eval $(python-package))

