# include (dbi_bam.pri)

PLUGIN_ID=dbi_bam
PLUGIN_NAME=BAM file based DBI implementation
PLUGIN_VENDOR=Unipro

include( ../../ugene_plugin_common.pri )

use_bundled_zlib() {
    INCLUDEPATH += ../../libs_3rdparty/zlib/src
}

LIBS += -lugenedb -lsamtools

# Force re-linking when lib changes
POST_TARGETDEPS += ../../_release/libsamtools.a
# Same options which samtools is built with
DEFINES+="_FILE_OFFSET_BITS=64" _LARGEFILE64_SOURCE _USE_KNETFILE
INCLUDEPATH += ../../libs_3rdparty/samtools/src ../../libs_3rdparty/samtools/src/samtools
win32:INCLUDEPATH += ../../libs_3rdparty/samtools/src/samtools/win32
win32:LIBS+=-lws2_32

!debug_and_release|build_pass {

    CONFIG(debug, debug|release) {
        LIBS -= -lugenedb -lsamtools
        LIBS += -lugenedbd -lsamtoolsd

        POST_TARGETDEPS -= ../../_release/libsamtools.a
        POST_TARGETDEPS += ../../_debug/libsamtoolsd.a
    }
}

INCLUDEPATH += ../../libs_3rdparty/sqlite3/src
INCLUDEPATH += ../../libs_3rdparty/samtools/src ../../libs_3rdparty/samtools/src/samtools
