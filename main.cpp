#include <QGuiApplication>
#include <QQuickView>
#include <QUrl>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView view;

    view.setSource(QUrl::fromLocalFile(
        "C:/Users/dawi2/Documents/QtQuick_project_repo/Main.qml"));

    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    return app.exec();
}