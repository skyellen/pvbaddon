######################################################################
# generated by pvdevelop at: Do Aug 2 07:25:56 2007
######################################################################

TEMPLATE = app
CONFIG  += warn_on release console
CONFIG  -= qt

# Input
HEADERS += open62541.h
SOURCES += opcua_client.cpp \
           open62541.c

QMAKE_CFLAGS += '-std=c99'

!macx {
unix:LIBS         += -lpthread
unix:LIBS         += /usr/lib/librllib.so
unix:INCLUDEPATH  += /opt/pvb/rllib/lib
}

macx:LIBS         += /opt/pvb/pvserver/libpvsmt.a /usr/lib/libpthread.dylib
macx:INCLUDEPATH  += /opt/pvb/pvserver
macx:LIBS         += /usr/lib/librllib.dylib
macx:INCLUDEPATH  += /opt/pvb/rllib/lib

QMAKE_LFLAGS      += -static-libgcc
win32:LIBS        += $(PVBDIR)/win-mingw/bin/librllib.a     \
                     $(PVBDIR)/win-mingw/bin/libserverlib.a \
                     -lws2_32            \
                     -limm32             \
                     -ladvapi32
win32:INCLUDEPATH += $(PVBDIR)/rllib/lib

TARGET = opcua_client

