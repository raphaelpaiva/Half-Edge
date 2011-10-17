#############################################################################
# Makefile for building: bin/trab2FT
# Generated by qmake (2.01a) (Qt 4.7.4) on: Sun Oct 16 14:49:38 2011
# Project:  trab2FT.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/share/qt/mkspecs/linux-g++-64 -o Makefile trab2FT.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt/mkspecs/linux-g++-64 -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include -I. -Isrc -I/usr/X11R6/include -Itmp
LINK          = g++
LFLAGS        = -m64 -Wl,-O1,--sort-common,--as-needed,-z,relro,--hash-style=gnu
LIBS          = $(SUBLIBS)  -L/usr/X11R6/lib64 -L/usr/lib -lQtGui -lQtCore -lpthread -lXext -lX11 -lm
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = tmp/

####### Files

SOURCES       = src/Trab2FT.cpp \
		src/HalfEdge.cpp \
		src/Face.cpp \
		src/Vertex.cpp \
		src/Interface.cpp \
		src/PlyParser.cpp \
		src/KDTree.cpp \
		src/plywriter.cpp \
		src/MainWindow.cpp \
		src/RenderPanel.cpp \
		src/Render.cpp \
		src/CommandQueue.cpp tmp/moc_Trab2FT.cpp \
		tmp/moc_HalfEdge.cpp \
		tmp/moc_Face.cpp \
		tmp/moc_Vertex.cpp \
		tmp/moc_Interface.cpp \
		tmp/moc_PlyParser.cpp \
		tmp/moc_KDTree.cpp \
		tmp/moc_MainWindow.cpp \
		tmp/moc_RenderPanel.cpp \
		tmp/moc_Render.cpp \
		tmp/moc_CommandQueue.cpp \
		tmp/qrc_trab2FT.cpp
OBJECTS       = tmp/Trab2FT.o \
		tmp/HalfEdge.o \
		tmp/Face.o \
		tmp/Vertex.o \
		tmp/Interface.o \
		tmp/PlyParser.o \
		tmp/KDTree.o \
		tmp/plywriter.o \
		tmp/MainWindow.o \
		tmp/RenderPanel.o \
		tmp/Render.o \
		tmp/CommandQueue.o \
		tmp/moc_Trab2FT.o \
		tmp/moc_HalfEdge.o \
		tmp/moc_Face.o \
		tmp/moc_Vertex.o \
		tmp/moc_Interface.o \
		tmp/moc_PlyParser.o \
		tmp/moc_KDTree.o \
		tmp/moc_MainWindow.o \
		tmp/moc_RenderPanel.o \
		tmp/moc_Render.o \
		tmp/moc_CommandQueue.o \
		tmp/qrc_trab2FT.o
DIST          = /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/x11.prf \
		/usr/share/qt/mkspecs/features/unix/x11inc.prf \
		/usr/share/qt/mkspecs/features/unix/x11lib.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		trab2FT.pro
QMAKE_TARGET  = trab2FT
DESTDIR       = bin/
TARGET        = bin/trab2FT

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) bin/ || $(MKDIR) bin/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: trab2FT.pro  /usr/share/qt/mkspecs/linux-g++-64/qmake.conf /usr/share/qt/mkspecs/common/g++.conf \
		/usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/debug.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/x11.prf \
		/usr/share/qt/mkspecs/features/unix/x11inc.prf \
		/usr/share/qt/mkspecs/features/unix/x11lib.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/qt.prf \
		/usr/share/qt/mkspecs/features/unix/thread.prf \
		/usr/share/qt/mkspecs/features/moc.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++-64 -o Makefile trab2FT.pro
/usr/share/qt/mkspecs/common/g++.conf:
/usr/share/qt/mkspecs/common/unix.conf:
/usr/share/qt/mkspecs/common/linux.conf:
/usr/share/qt/mkspecs/qconfig.pri:
/usr/share/qt/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt/mkspecs/features/qt_functions.prf:
/usr/share/qt/mkspecs/features/qt_config.prf:
/usr/share/qt/mkspecs/features/exclusive_builds.prf:
/usr/share/qt/mkspecs/features/default_pre.prf:
/usr/share/qt/mkspecs/features/debug.prf:
/usr/share/qt/mkspecs/features/default_post.prf:
/usr/share/qt/mkspecs/features/unix/x11.prf:
/usr/share/qt/mkspecs/features/unix/x11inc.prf:
/usr/share/qt/mkspecs/features/unix/x11lib.prf:
/usr/share/qt/mkspecs/features/warn_on.prf:
/usr/share/qt/mkspecs/features/qt.prf:
/usr/share/qt/mkspecs/features/unix/thread.prf:
/usr/share/qt/mkspecs/features/moc.prf:
/usr/share/qt/mkspecs/features/resources.prf:
/usr/share/qt/mkspecs/features/uic.prf:
/usr/share/qt/mkspecs/features/yacc.prf:
/usr/share/qt/mkspecs/features/lex.prf:
/usr/share/qt/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++-64 -o Makefile trab2FT.pro

dist: 
	@$(CHK_DIR_EXISTS) tmp/trab2FT0.0.1 || $(MKDIR) tmp/trab2FT0.0.1 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) tmp/trab2FT0.0.1/ && $(COPY_FILE) --parents src/Trab2FT.h src/HalfEdge.h src/Face.h src/Vertex.h src/Interface.h src/PlyParser.h src/KDTree.h src/plywriter.h src/MainWindow.h src/RenderPanel.h src/Render.h src/CommandQueue.h tmp/trab2FT0.0.1/ && $(COPY_FILE) --parents trab2FT.qrc tmp/trab2FT0.0.1/ && $(COPY_FILE) --parents src/Trab2FT.cpp src/HalfEdge.cpp src/Face.cpp src/Vertex.cpp src/Interface.cpp src/PlyParser.cpp src/KDTree.cpp src/plywriter.cpp src/MainWindow.cpp src/RenderPanel.cpp src/Render.cpp src/CommandQueue.cpp tmp/trab2FT0.0.1/ && (cd `dirname tmp/trab2FT0.0.1` && $(TAR) trab2FT0.0.1.tar trab2FT0.0.1 && $(COMPRESS) trab2FT0.0.1.tar) && $(MOVE) `dirname tmp/trab2FT0.0.1`/trab2FT0.0.1.tar.gz . && $(DEL_FILE) -r tmp/trab2FT0.0.1


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: tmp/moc_Trab2FT.cpp tmp/moc_HalfEdge.cpp tmp/moc_Face.cpp tmp/moc_Vertex.cpp tmp/moc_Interface.cpp tmp/moc_PlyParser.cpp tmp/moc_KDTree.cpp tmp/moc_MainWindow.cpp tmp/moc_RenderPanel.cpp tmp/moc_Render.cpp tmp/moc_CommandQueue.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) tmp/moc_Trab2FT.cpp tmp/moc_HalfEdge.cpp tmp/moc_Face.cpp tmp/moc_Vertex.cpp tmp/moc_Interface.cpp tmp/moc_PlyParser.cpp tmp/moc_KDTree.cpp tmp/moc_MainWindow.cpp tmp/moc_RenderPanel.cpp tmp/moc_Render.cpp tmp/moc_CommandQueue.cpp
tmp/moc_Trab2FT.cpp: src/Trab2FT.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/Trab2FT.h -o tmp/moc_Trab2FT.cpp

tmp/moc_HalfEdge.cpp: src/Vertex.h \
		src/HalfEdge.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/HalfEdge.h -o tmp/moc_HalfEdge.cpp

tmp/moc_Face.cpp: src/HalfEdge.h \
		src/Vertex.h \
		src/Face.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/Face.h -o tmp/moc_Face.cpp

tmp/moc_Vertex.cpp: src/Vertex.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/Vertex.h -o tmp/moc_Vertex.cpp

tmp/moc_Interface.cpp: src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/Interface.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/Interface.h -o tmp/moc_Interface.cpp

tmp/moc_PlyParser.cpp: src/PlyParser.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/PlyParser.h -o tmp/moc_PlyParser.cpp

tmp/moc_KDTree.cpp: src/HalfEdge.h \
		src/Vertex.h \
		src/KDTree.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/KDTree.h -o tmp/moc_KDTree.cpp

tmp/moc_MainWindow.cpp: src/RenderPanel.h \
		src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/MainWindow.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/MainWindow.h -o tmp/moc_MainWindow.cpp

tmp/moc_RenderPanel.cpp: src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/RenderPanel.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/RenderPanel.h -o tmp/moc_RenderPanel.cpp

tmp/moc_Render.cpp: src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/Render.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/Render.h -o tmp/moc_Render.cpp

tmp/moc_CommandQueue.cpp: src/CommandQueue.h
	/usr/bin/moc $(DEFINES) $(INCPATH) src/CommandQueue.h -o tmp/moc_CommandQueue.cpp

compiler_rcc_make_all: tmp/qrc_trab2FT.cpp
compiler_rcc_clean:
	-$(DEL_FILE) tmp/qrc_trab2FT.cpp
tmp/qrc_trab2FT.cpp: trab2FT.qrc \
		imgs/zoom-in.png \
		imgs/arrow-down.png \
		imgs/arrow-left.png \
		imgs/zoom-out.png \
		imgs/open.png \
		imgs/arrow-up.png \
		imgs/arrow-rigth.png \
		imgs/vertice.png \
		imgs/aresta.png \
		imgs/face.png
	/usr/bin/rcc -name trab2FT trab2FT.qrc -o tmp/qrc_trab2FT.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

tmp/Trab2FT.o: src/Trab2FT.cpp src/Trab2FT.h \
		src/MainWindow.h \
		src/RenderPanel.h \
		src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Trab2FT.o src/Trab2FT.cpp

tmp/HalfEdge.o: src/HalfEdge.cpp src/HalfEdge.h \
		src/Vertex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/HalfEdge.o src/HalfEdge.cpp

tmp/Face.o: src/Face.cpp src/Face.h \
		src/HalfEdge.h \
		src/Vertex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Face.o src/Face.cpp

tmp/Vertex.o: src/Vertex.cpp src/Vertex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Vertex.o src/Vertex.cpp

tmp/Interface.o: src/Interface.cpp src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Interface.o src/Interface.cpp

tmp/PlyParser.o: src/PlyParser.cpp src/PlyParser.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/PlyParser.o src/PlyParser.cpp

tmp/KDTree.o: src/KDTree.cpp src/KDTree.h \
		src/HalfEdge.h \
		src/Vertex.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/KDTree.o src/KDTree.cpp

tmp/plywriter.o: src/plywriter.cpp src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/plywriter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/plywriter.o src/plywriter.cpp

tmp/MainWindow.o: src/MainWindow.cpp src/MainWindow.h \
		src/RenderPanel.h \
		src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/plywriter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/MainWindow.o src/MainWindow.cpp

tmp/RenderPanel.o: src/RenderPanel.cpp src/RenderPanel.h \
		src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/RenderPanel.o src/RenderPanel.cpp

tmp/Render.o: src/Render.cpp src/Render.h \
		src/CommandQueue.h \
		src/Interface.h \
		src/Vertex.h \
		src/HalfEdge.h \
		src/Face.h \
		src/KDTree.h \
		src/PlyParser.h \
		src/plywriter.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Render.o src/Render.cpp

tmp/CommandQueue.o: src/CommandQueue.cpp src/CommandQueue.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/CommandQueue.o src/CommandQueue.cpp

tmp/moc_Trab2FT.o: tmp/moc_Trab2FT.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Trab2FT.o tmp/moc_Trab2FT.cpp

tmp/moc_HalfEdge.o: tmp/moc_HalfEdge.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_HalfEdge.o tmp/moc_HalfEdge.cpp

tmp/moc_Face.o: tmp/moc_Face.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Face.o tmp/moc_Face.cpp

tmp/moc_Vertex.o: tmp/moc_Vertex.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Vertex.o tmp/moc_Vertex.cpp

tmp/moc_Interface.o: tmp/moc_Interface.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Interface.o tmp/moc_Interface.cpp

tmp/moc_PlyParser.o: tmp/moc_PlyParser.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_PlyParser.o tmp/moc_PlyParser.cpp

tmp/moc_KDTree.o: tmp/moc_KDTree.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_KDTree.o tmp/moc_KDTree.cpp

tmp/moc_MainWindow.o: tmp/moc_MainWindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_MainWindow.o tmp/moc_MainWindow.cpp

tmp/moc_RenderPanel.o: tmp/moc_RenderPanel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_RenderPanel.o tmp/moc_RenderPanel.cpp

tmp/moc_Render.o: tmp/moc_Render.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Render.o tmp/moc_Render.cpp

tmp/moc_CommandQueue.o: tmp/moc_CommandQueue.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_CommandQueue.o tmp/moc_CommandQueue.cpp

tmp/qrc_trab2FT.o: tmp/qrc_trab2FT.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qrc_trab2FT.o tmp/qrc_trab2FT.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

