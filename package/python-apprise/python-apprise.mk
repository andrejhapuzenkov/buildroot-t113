################################################################################
#
# python-apprise
#
################################################################################

PYTHON_APPRISE_VERSION = 1.9.2
PYTHON_APPRISE_SOURCE = apprise-$(PYTHON_APPRISE_VERSION).tar.gz
PYTHON_APPRISE_SITE = https://files.pythonhosted.org/packages/09/b9/77582f557b5b5fcfea85ff2e1c5708a848a98ce368db001ce37c5d7cc758
PYTHON_APPRISE_DEPENDENCIES = babel
PYTHON_APPRISE = BSD License
PYTHON_APPRISE_LICENSE_FILES = LICENSE
PYTHON_APPRISE_SETUP_TYPE = flit #setuptools

#HOST_PYTHON_APPRISE_ENV = \
#	PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1 \
#	PKG_CONFIG_ALLOW_SYSTEM_LIBS=1 \
#	PKG_CONFIG="$(PKG_CONFIG_HOST_BINARY)" \
#	PKG_CONFIG_SYSROOT_DIR="/" \
#	PKG_CONFIG_LIBDIR="$(HOST_DIR)/lib/pkgconfig:$(HOST_DIR)/share/pkgconfig"
#HOST_PYTHON_APPRISE_DEPENDENCIES = babel


$(eval $(python-package))
#$(eval $(host-python-package))
