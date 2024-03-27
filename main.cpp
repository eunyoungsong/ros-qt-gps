#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "rosNode.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    // ROS 초기화
    ros::init(argc, argv, "ros_node");
    ros::NodeHandle nh;
    RosNode rosnode;
    rosnode.runRosNode(nh);
    ros::spin();

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
