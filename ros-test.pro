QT += quick core

CONFIG += c++11

PKGCONFIG += opencv

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# ROS 패키지 및 메시지를 사용하기 위한 include 경로 추가
INCLUDEPATH += /opt/ros/melodic/include

# ROS 라이브러리 경로 추가
LIBS += \
    -L"/usr/local/lib" \
    -L"/opt/ros/melodic/lib" \
    -lboost_system \
    -lopencv_core -lopencv_imgcodecs -lopencv_imgproc -lopencv_videoio \
    -lrosconsole -lroscpp -lroscpp_serialization -lrostime -lrosconsole_log4cxx -lrosconsole_backend_interface \
    -lcpp_common \
    -lxmlrpcpp


# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        rosNode.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


## Add ROS packages
#ROS_PACKAGES += roscpp std_msgs

## Include ROS headers
#INCLUDEPATH += $$split(system("pkg-config --cflags $${ROS_PACKAGES.join(" ")}"), " ")
#INCLUDEPATH += /opt/ros/melodic/include

## Link against ROS libraries
#LIBS += $$split(system("pkg-config --libs $${ROS_PACKAGES.join(" ")}"), " ")

HEADERS += \
    rosNode.h
