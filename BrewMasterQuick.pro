TEMPLATE = app
QT += qml quick
CONFIG += c++11 disable-desktop
static {
    QT += svg
    QTPLUGIN += qtvirtualkeyboardplugin
}

QT_VIRTUALKEYBOARD_STYLE=test

SOURCES += main.cpp \
    textfielddoublevalidator.cpp \
    ViewManager/mainviewmgr.cpp \
    Model/settings.cpp \
    Model/brewplan.cpp \
    Model/mashdata.cpp \
    Model/hopsdata.cpp \
    Model/brewery.cpp \
    Model/kettle.cpp \
    Model/clock.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
#QML2_IMPORT_PATH = "C:/MySoftwareProjects/BrewMasterQuick/Style"

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += KEYBOARD_STYLE_DIR=\\\"$$_PRO_FILE_PWD_/Style\\\"

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Style/QtQuick/VirtualKeyboard/Styles/test/style.qml \

HEADERS += \
    textfielddoublevalidator.h \    
    ViewManager/mainviewmgr.h \
    Model/settings.h \
    Model/brewplan.h \
    Model/mashdata.h \
    Model/hopsdata.h \
    Model/brewery.h \
    Model/kettle.h \
    Model/clock.h

FORMS +=
