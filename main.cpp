#include <QtQuick>
// Dołącza moduł Qt Quick w C++ — daje dostęp do QQuickView, QML engine itd.

int main(int argc, char *argv[])   // Główna funkcja programu
{
    QGuiApplication app(argc, argv);
    // Tworzy aplikację GUI bez widżetów (QML/Quick zamiast QWidget)
    // Odpowiada za pętlę zdarzeń, obsługę okien, input, itp.

    QQuickView view;
    // Tworzy okno renderujące QML — coś jak "przeglądarka" QML

    view.setSource(QUrl::fromLocalFile("C:/Users/dawi2/Documents/Kurs_QtQuick/Main.qml"));

    // Ładuje plik QML z dysku
    // QUrl mówi silnikowi, gdzie znajduje się plik QML

    view.show();
    // Pokazuje okno z załadowanym interfejsem QML

    return app.exec();
    // Uruchamia główną pętlę zdarzeń — aplikacja działa, dopóki okno jest otwarte
}
