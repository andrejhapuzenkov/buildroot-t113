################################################################################
#
# python-ldap3
#
################################################################################

PYTHON_LDAP3_VERSION = 2.9.1
PYTHON_LDAP3_SOURCE = ldap3-$(PYTHON_LDAP3_VERSION).tar.gz
PYTHON_LDAP3_SITE = https://files.pythonhosted.org/packages/43/ac/96bd5464e3edbc61595d0d69989f5d9969ae411866427b2500a8e5b812c0
PYTHON_LDAP3_LICENSE = GNU Lesser General Public License v3
PYTHON_LDAP3_LICENSE_FILES = LICENSE
PYTHON_LDAP3_SETUP_TYPE = setuptools

$(eval $(python-package))
