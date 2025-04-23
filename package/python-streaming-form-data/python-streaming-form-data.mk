################################################################################
#
# python-streaming-form-data
#
################################################################################

PYTHON_STREAMING_FORM_DATA_VERSION = 1.12.0
PYTHON_STREAMING_FORM_DATA_SOURCE = streaming-form-data-$(PYTHON_STREAMING_FORM_DATA_VERSION).tar.gz
PYTHON_STREAMING_FORM_DATA_SITE = https://files.pythonhosted.org/packages/03/8e/292cc146d093ec1cbf7b105762b20c87b59021ef371d52ed9351900c926f
PYTHON_STREAMING_FORM_DATA_LICENSE = MIT License
PYTHON_STREAMING_FORM_DATA_LICENSE_FILES = LICENSE
PYTHON_STREAMING_FORM_DATA_SETUP_TYPE = setuptools

$(eval $(python-package))
