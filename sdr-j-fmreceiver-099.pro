######################################################################
# Automatically generated by qmake (2.01a) Tue Oct 6 19:48:14 2009
# but modified by me to accomodate for the includes for qwt and
# portaudio
######################################################################

TEMPLATE	= app
TARGET		= sdr-j-fmreceiver-0.99
QT		+= widgets
CONFIG		+= console
QMAKE_CFLAGS	+= -flto -ffast-math
QMAKE_CXXFLAGS	+= -flto -ffast-math
QMAKE_LFLAGS	+= -flto
#QMAKE_CXXFLAGS	+= -pg
#QMAKE_CFLAGS	+= -pg
#QMAKE_LFLAGS	+= -pg
DEPENDPATH += . \
	      ..\
	      ../.. \
	      ../../../ \
	      ./src \
	      ./includes \
	      ./includes/output \
	      ./includes/various \
	      ./includes/fm \
	      ./includes/rds \
	      ./includes/scopes-qwt6 \
	      ./includes/various \
	      ./src \
	      ./src/output \
	      ./src/various \
	      ./src/fm \
	      ./src/rds \
	      ./src/scopes-qwt6 \
	      ./input \
	      ./input/filereader

INCLUDEPATH += . \
	      ..\
	      ../.. \
	      ./includes \
	      ./includes/output \
	      ./includes/various \
	      ./includes/fm \
	      ./includes/rds \
	      ./includes/scopes-qwt6 \
	      ./src \
	      ./src/output \
	      ./src/various \
	      ./src/fm \
	      ./src/rds \
	      ./src/scopes-qwt6 \
	      ./input \
	      ./input/filereader

# Input
HEADERS += ./includes/gui.h \
	   ./includes/popup-keypad.h \
	   ./includes/fm-constants.h \
	   ./includes/various/keyboardfilter.h \
	   ./includes/various/program-list.h \
	   ./includes/various/squelchClass.h \
           ./includes/various/fft.h \
	   ./includes/various/oscillator.h \
           ./includes/various/ringbuffer.h \
	   ./includes/various/pllC.h \
	   ./includes/various/sincos.h \
	   ./includes/various/newconverter.h \
	   ./includes/various/fir-filters.h \
	   ./includes/various/fft-filters.h \
	   ./includes/various/iir-filters.h \
	   ./includes/various/Xtan2.h \
	   ./includes/output/audiosink.h \
	   ./includes/scopes-qwt6/scope.h \
           ./includes/scopes-qwt6/spectrogramdata.h \
	   ./includes/scopes-qwt6/fft-scope.h \
	   ./includes/fm/fm-demodulator.h \
	   ./includes/fm/fm-processor.h \
	   ./includes/rds/rds-decoder.h \
	   ./includes/rds/rds-blocksynchronizer.h \
	   ./includes/rds/rds-group.h \
	   ./includes/rds/rds-groupdecoder.h  \
	   ./input/virtual-input.h \
	   ./input/filereader/filereader.h \
	   ./input/filereader/filehulp.h

FORMS +=   ./sdrgui.ui \
	   ./input/filereader/filereader-widget.ui

SOURCES += ./src/main.cpp \
	   ./src/gui.cpp \
	   ./src/popup-keypad.cpp \
	   ./src/various/keyboardfilter.cpp \
	   ./src/various/program-list.cpp \
           ./src/various/fft.cpp \
	   ./src/various/oscillator.cpp \
	   ./src/various/pllC.cpp \
	   ./src/various/sincos.cpp \
	   ./src/various/newconverter.cpp \
	   ./src/various/fir-filters.cpp \
	   ./src/various/fft-filters.cpp \
	   ./src/various/iir-filters.cpp \
	   ./src/various/Xtan2.cpp \
	   ./src/output/audiosink.cpp \
	   ./src/scopes-qwt6/scope.cpp \
	   ./src/scopes-qwt6/fft-scope.cpp \
	   ./src/fm/fm-demodulator.cpp \
	   ./src/fm/fm-processor.cpp \
	   ./src/rds/rds-decoder.cpp \
	   ./src/rds/rds-blocksynchronizer.cpp \
	   ./src/rds/rds-group.cpp \
	   ./src/rds/rds-groupdecoder.cpp \
	   ./input/virtual-input.cpp \
	   ./input/filereader/filereader.cpp \
	   ./input/filereader/filehulp.cpp
#
# for windows32 we use:
win32 {
CONFIG	+= extio
CONFIG	+= dabstick
CONFIG	+= sdrplay
CONFIG	+= airspy
DESTDIR	= ../../windows-bin
# includes in mingw differ from the includes in fedora linux
LIBS            += -L/usr/i686-w64-mingw32/sys-root/mingw/lib
INCLUDEPATH 	+= /usr/i686-w64-mingw32/sys-root/mingw/include
INCLUDEPATH 	+= /usr/i686-w64-mingw32/sys-root/mingw/include/qt5/qwt
LIBS	+= -lfftw3f
LIBS	+= -lportaudio
LIBS	+= -lqwt-qt5
LIBS	+= -lsndfile
LIBS	+= -lsamplerate
LIBS	+= -lole32
LIBS	+= -lwinmm
LIBS 	+= -lstdc++
LIBS	+= -lusb-1.0
LIBS	+= -lwinpthread
}
#
#for fedora and ubuntu  we use
unix { 
CONFIG		+= pmsdr
CONFIG		+= sdrplay
CONFIG		+= airspy
CONFIG		+= dabstick
CONFIG		+= elad_s1
DESTDIR		= ./linux-bin
INCLUDEPATH 	+= /usr/include/qt5/qwt
#for ubuntu the first line
#LIBS +=  -lqwt -lusb-1.0 -lrt -lportaudio -lsndfile -lfftw3f -lrtlsdr -ldl
#for fedora 21
LIBS +=  -lqwt-qt5 -lusb-1.0 -lrt -lportaudio -lsndfile -lfftw3f -lrtlsdr -ldl
LIBS += -lsamplerate
}

#	the devices
dabstick {
	DEFINES		+= HAVE_DABSTICK
	FORMS		+= ./input/rtlsdr-handler/dabstick-widget.ui
	INCLUDEPATH	+= ./input/rtlsdr-handler
	DEPENDPATH	+= ./input/rtlsdr-handler
	HEADERS		+= ./input/rtlsdr-handler/rtlsdr-handler.h \
	                   ./input/rtlsdr-handler/dongleselect.h
	SOURCES		+= ./input/rtlsdr-handler/rtlsdr-handler.cpp \
	                   ./input/rtlsdr-handler/dongleselect.cpp
}
#
#	the SDRplay
#
sdrplay {
	DEFINES		+= HAVE_SDRPLAY
	FORMS		+= ./input/sdrplay/sdrplay-widget.ui
	INCLUDEPATH	+= ./input/sdrplay
	HEADERS		+= ./input/sdrplay/sdrplay.h \
	                   ./input/sdrplay/sdrplayselect.h
	SOURCES		+= ./input/sdrplay/sdrplay.cpp \
	                   ./input/sdrplay/sdrplayselect.cpp
}
#
#	the AIRSPY
#
airspy {
	DEFINES		+= HAVE_AIRSPY
	FORMS		+= ./input/airspy/airspy-widget.ui
	DEPENDPATH	+= ./input/airspy
	INCLUDEPATH	+= ./input/airspy \
	                   /usr/local/include/libairspy
	HEADERS		+= ./input/airspy/airspy-handler.h 
	SOURCES		+= ./input/airspy/airspy-handler.cpp 
}
#
#	the elad-s1
#
elad_s1 {
	DEFINES		+= HAVE_ELAD_S1
	FORMS		+= ./input/sw-elad-s1/elad_widget.ui
	DEPENDPATH	+= ./input/sw-elad-s1
	INCLUDEPATH	+= ./input/sw-elad-s1 
	HEADERS		+= ./input/sw-elad-s1/elad-s1.h \
	                   ./input/sw-elad-s1/elad-worker.h \
	                   ./input/sw-elad-s1/elad-loader.h
	SOURCES		+= ./input/sw-elad-s1/elad-s1.cpp \
	                   ./input/sw-elad-s1/elad-worker.cpp \
	                   ./input/sw-elad-s1/elad-loader.cpp
}
#
#	extio dependencies, windows only
#
extio {
	DEFINES		+= HAVE_EXTIO
	FORMS		+= ./input/extio-handler/extio-widget.ui
	INCLUDEPATH	+= ./input/extio-handler
	DEPENDPATH	+= ./input/extio-handler
	HEADERS		+= ./input/extio-handler/extio-handler.h \
			   ./input/extio-handler/virtual-reader.h \
	           	   ./input/extio-handler/common-readers.h \
	           	   ./input/extio-handler/card-reader.h 
	SOURCES		+= ./input/extio-handler/virtual-reader.cpp \
	           	   ./input/extio-handler/extio-handler.cpp \
	           	   ./input/extio-handler/common-readers.cpp \
	           	   ./input/extio-handler/card-reader.cpp 
}

pmsdr {
	DEFINES		+= HAVE_PMSDR
	FORMS		+= ./input/pmsdr/pmsdr-widget.ui
	INCLUDEPATH	+= ./input/pmsdr
	DEPENDPATH	+= ./input/pmsdr
	HEADERS		+= ./input/pmsdr/pmsdr.h \
	                   ./input/pmsdr/pmsdr-usb.h \
	                   ./input/pmsdr/pmsdr-comm.h \
	                   ./input/pmsdr/pa-reader.h
	SOURCES		+= ./input/pmsdr/pmsdr.cpp \
	                   ./input/pmsdr/pmsdr-usb.cpp \
	                   ./input/pmsdr/pmsdr-comm.cpp \
	                   ./input/pmsdr/pa-reader.cpp
}

