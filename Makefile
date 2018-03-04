LIB_PATH := /usr/lib/aml_libs

all:
	-$(MAKE) -C amadec all
	-${MAKE} -C audio_codec all
	-$(MAKE) -C amavutils all
	-$(MAKE) -C amcodec all
	-$(MAKE) -C example all

clean:
	-$(MAKE) -C amadec clean
	-${MAKE} -C audio_codec clean
	-$(MAKE) -C amavutils clean
	-$(MAKE) -C amcodec clean
	-$(MAKE) -C example clean

install:
	mkdir -p $(LIB_PATH)
	mkdir -p /usr/lib/libplayer
	-$(MAKE) -C amadec install
	-$(MAKE) -C amavutils install
	-$(MAKE) -C amcodec install
	-$(MAKE) -C example install
	-${MAKE} -C audio_codec install
	install -D -m 0644 amadec/firmware/*.bin /lib/firmware
	-cp aml.conf /etc/ld.so.conf.d
