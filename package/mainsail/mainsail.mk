################################################################################
#
# mainsail
#
################################################################################

#MAINSAIL_VERSION = v2.13.2
#MAINSAIL_SOURSE = mainsail.zip
#MAINSAIL_SITE = https://github.com/mainsail-crew/mainsail/releases/download/$(MAINSAIL_VERSION)
#MAINSAIL_SITE_METHOD = wget
#MAINSAIL_SITE = $(call github,mainsail-crew,mainsail,$(MAINSAIL_VERSION))
#https://github.com/mainsail-crew/mainsail/archive/refs/tags/v2.13.2.zip

# TODO
#$(@D)/mainsail
#wget -O $(@D)/mainsail/mainsail.zip https://github.com/mainsail-crew/mainsail/releases/latest/download/mainsail.zip


define MAINSAIL_INSTALL_TARGET_CMDS

	mkdir -p -m 0755 $(TARGET_DIR)/opt/mainsail
	mkdir -p -m 0755 $(TARGET_DIR)/etc/nginx/sites-available
	mkdir -p -m 0755 $(TARGET_DIR)/etc/nginx/conf.d
	mkdir -p -m 0755 $(TARGET_DIR)/etc/nginx/sites-enabled

#	cp -rf $(@D)/mainsail $(@D)/scripts $(TARGET_DIR)/opt/mainsail
#	cp -rf $(@D)/mainsail $(TARGET_DIR)/opt/mainsail
	cp -rf $(MAINSAIL_PKGDIR)/mainsail  $(TARGET_DIR)/opt
	cp $(MAINSAIL_PKGDIR)/etc/mainsail  $(TARGET_DIR)/etc/nginx/sites-available/
	cp $(MAINSAIL_PKGDIR)/etc/upstreams.conf  $(TARGET_DIR)/etc/nginx/conf.d/
	cp $(MAINSAIL_PKGDIR)/etc/common_vars.conf  $(TARGET_DIR)/etc/nginx/conf.d/
	cp $(MAINSAIL_PKGDIR)/etc/nginx.conf  $(TARGET_DIR)/etc/nginx/
endef


#define MOONRAKER_INSTALL_INIT_SYSTEMD
#	$(INSTALL) -D -m 0644 $(MOONRAKER_PKGDIR)/etc/systemd/system/moonraker.service \
#		$(TARGET_DIR)/etc/systemd/system/moonraker.service
#endef

#define MOONRAKER_USERS
#	moonraker -1 moonraker -1 * - - - Moonraker daemon
#endef


$(eval $(generic-package))

