################################################################################
#
# python-streaming-form-data
#
################################################################################

PYTHON_STREAMING_FORM_DATA_VERSION = 1.19.1
PYTHON_STREAMING_FORM_DATA_SOURCE = streaming_form_data-$(PYTHON_STREAMING_FORM_DATA_VERSION).tar.gz
PYTHON_STREAMING_FORM_DATA_SITE = https://files.pythonhosted.org/packages/f9/fa/a9975245eefac04421a219e8007f9a4ae156b701b94baffb4d15af43304d
PYTHON_STREAMING_FORM_DATA_LICENSE = MIT License
PYTHON_STREAMING_FORM_DATA_LICENSE_FILES = LICENSE
PYTHON_STREAMING_FORM_DATA_SETUP_TYPE = setuptools

$(eval $(python-package))
