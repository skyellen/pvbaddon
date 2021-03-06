######################################################################
# generated by pvdevelop at: Sa. Mai 4 09:29:07 2013
######################################################################

TEMPLATE = app
CONFIG  += warn_on release console
CONFIG  -= qt
CONFIG  -= UNICODE

# Input
HEADERS += plcapp.h
SOURCES += main.cpp \
           stm1.cpp \
           stm2.cpp

!macx {
unix:LIBS          += -lpthread
unix:LIBS          += /usr/lib/librllib.so
unix:INCLUDEPATH   += /opt/pvb/rllib/lib
}

macx:LIBS          += /usr/lib/libpthread.dylib
macx:LIBS          += /usr/lib/librllib.dylib
macx:INCLUDEPATH   += /opt/pvb/rllib/lib

win32-g++ {
QMAKE_LFLAGS       += -static-libgcc
win32:LIBS         += "$(PVBDIR)/win-mingw/bin/librllib.a"
win32:LIBS         += -lws2_32 -ladvapi32
win32:INCLUDEPATH += "$(PVBDIR)/rllib/lib"
}
else {
win32:LIBS         +=  wsock32.lib advapi32.lib
win32:LIBS         += "$(PVBDIR)/win/bin/rllib.lib"
win32:INCLUDEPATH  += "$(PVBDIR)/rllib/lib"
}

TARGET = plc
