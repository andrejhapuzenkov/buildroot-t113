################################################################################
#
# moonraker
#
################################################################################

# TODO: add config to create default user if does not exists

#echo "Installing from Moonraker source..."
MOONRAKER_VERSION = v0.9.3
MOONRAKER_SITE = $(call github,Arksine,moonraker,$(MOONRAKER_VERSION))
#MOONRAKER_DEPENDENCIES = host-python-cffi

#MOONRAKER_PYTHON_DIR = $(TARGET_DIR)/opt/moonraker-env
#MOONRAKER_DEFAULT_FILE = $(TARGET_DIR)/etc/default/klipper


# Klipper src/ configuration
#KLIPPER3D_KCONFIG_FILE = $(call qstrip,$(BR2_PACKAGE_KLIPPER3D_SRC_CONFIG))
#KLIPPER3D_KCONFIG_DEPENDENCIES = host-arm-gnu-toolchain-old $(BR2_MAKE_HOST_DEPENDENCY)

# Build Klipper src/ for uC (to be flashed later) 
# Build Klippy C code part of the CFFI stuff
#KLIPPER3D_MAKE_OPTS = CROSS_PREFIX=$(HOST_DIR)/bin/arm-none-eabi-
#KLIPPER3D_KLIPPY_MAKE_OPTS = DIR=$(@D)/klippy/chelper CC=$(TARGET_CC)

define MOONRAKER_BUILD_CMDS	
	$(BR2_MAKE) $(MOONRAKER_MAKE_OPTS) -C $(@D)
#	$(BR2_MAKE) $(KLIPPER3D_KLIPPY_MAKE_OPTS) -C $(KLIPPER3D_PKGDIR)/klippy $(@D)/klippy/chelper/c_helper.so
endef

# TODO move printer.cfg download to <pkg>_EXTRA_DOWNLOADS
#$(@D)/config
#wget -O $(TARGET_DIR)/opt/klipper/printer.cfg https://raw.githubusercontent.com/wreck-lab/wrecklabOS/devel/src/modules/klipper/filesystem/home/pi/klipper_config/config/generic-wrecklab-printhat-v2-cartesian.cfg

define MOONRAKER_INSTALL_TARGET_CMDS
	mkdir -p -m 0755 $(TARGET_DIR)/opt/moonraker
#	$(INSTALL) -D -m 0755 $(@D)/* $(TARGET_DIR)/opt/klipper

#	mkdir -p -m 0755 $(TARGET_DIR)/opt/klipper
#	cp -rf $(@D)/klippy $(@D)/scripts $(@D)/config $(TARGET_DIR)/opt/klipper
	cp -rf $(@D)/moonraker $(@D)/scripts $(TARGET_DIR)/opt/moonraker
#	cp $(@D)/.config  $(TARGET_DIR)/opt/klipper

#	mkdir -p -m 0755 $(TARGET_DIR)/opt/printer_data/config
#	mkdir -p -m 0755 $(TARGET_DIR)/etc/systemd/system
#	mkdir -p -m 0755 $(TARGET_DIR)/opt/printer_data/logs
#	mkdir -p -m 0755 $(TARGET_DIR)/opt/printer_data/systemd


	cp $(MOONRAKER_PKGDIR)/etc/systemd/system/moonraker.service  $(TARGET_DIR)/etc/systemd/system/
#	cp $(MOONRAKER_PKGDIR)/printer_data/logs/moonraker.log  $(TARGET_DIR)/opt/printer_data/logs
	cp $(MOONRAKER_PKGDIR)/printer_data/systemd/moonraker.env  $(TARGET_DIR)/opt/printer_data/systemd
#	cp $(MOONRAKER_PKGDIR)/klippy/extras/temperature_sensors.cfg  $(TARGET_DIR)/opt/klipper/klippy/extras/temperature_sensors.cfg


#	mkdir -p -m 0755 $(TARGET_DIR)/opt/klipper/out
#	cp $(@D)/out/klipper.bin $(@D)/out/klipper.elf $(@D)/out/klipper.dict $(@D)/out/compile_time_request.txt \
#		$(TARGET_DIR)/opt/klipper/out
	
#	cp $(MOONRAKER_PKGDIR)/printer_data/config/printer_xyz.cfg  $(TARGET_DIR)/opt/printer_data/config/printer.cfg

endef

# Custom SYSV init script
# see https://github.com/buildroot/buildroot/blob/master/package/restorecond/S02restorecond
#define KLIPPER3D_INSTALL_INIT_SYSV
#	mkdir -p -m 0755 $(TARGET_DIR)/etc/default
#	cp $(KLIPPER3D_PKGDIR)/etc/default/klipper $(TARGET_DIR)/etc/default
#	$(INSTALL) -m 0755 -D $(KLIPPER3D_PKGDIR)/etc/init.d/S90klipper $(TARGET_DIR)/etc/init.d
#endef

#define MOONRAKER_INSTALL_INIT_SYSTEMD
#	$(INSTALL) -D -m 0644 $(MOONRAKER_PKGDIR)/etc/systemd/system/moonraker.service \
#		$(TARGET_DIR)/etc/systemd/system/moonraker.service
#endef

#define MOONRAKER_USERS
#	moonraker -1 moonraker -1 * - - - Moonraker daemon
#endef

#$(eval $(kconfig-package))
#$(eval $(python-package))
$(eval $(autotools-package))
