################################################################################
#
# moonraker
#
################################################################################

MOONRAKER_VERSION = v0.9.3
MOONRAKER_SITE = $(call github,Arksine,moonraker,$(MOONRAKER_VERSION))

define MOONRAKER_INSTALL_TARGET_CMDS
	mkdir -p -m 0755 $(TARGET_DIR)/opt/moonraker
	cp -rf $(@D)/moonraker $(@D)/scripts $(TARGET_DIR)/opt/moonraker
	cp $(MOONRAKER_PKGDIR)/etc/systemd/system/moonraker.service  $(TARGET_DIR)/etc/systemd/system/
	cp $(MOONRAKER_PKGDIR)/printer_data/systemd/moonraker.env  $(TARGET_DIR)/opt/printer_data/systemd
endef

#define MOONRAKER_INSTALL_INIT_SYSTEMD
#	$(INSTALL) -D -m 0644 $(MOONRAKER_PKGDIR)/etc/systemd/system/moonraker.service \
#		$(TARGET_DIR)/etc/systemd/system/moonraker.service
#endef

#define MOONRAKER_USERS
#	moonraker -1 moonraker -1 * - - - Moonraker daemon
#endef


$(eval $(generic-package))
