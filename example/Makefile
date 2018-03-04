CROSS=$(CC:%gcc=%)

esplayer_s=esplayer.c
tsplay_s=testplay.c

INSTALL_FLAGS=-m 755

TARGET=esplayer

LDFLAGS= -L/usr/lib/aml_libs -lamcodec -ldl -lamadec -lasound -lamavutils
CFLAGS+= -I$(shell pwd) -I../amcodec/include -pthread -O2

.PHONY: all config  before_cmd install clean distclean

all: ${TARGET} tsplay

install:all
	install $(INSTALL_FLAGS) $(TARGET) $(TARGET_DIR)/bin

distclean:clean

clean:
	rm esplayer tsplay *.o

${TARGET}:esplayer.o
	$(CC) $(CFLAGS) $($(@:%=%_s)) -o $@ $(LDFLAGS)

tsplay:testplay.o
	$(CC) $(CFLAGS) $($(@:%=%_s)) -o $@ $(LDFLAGS)
