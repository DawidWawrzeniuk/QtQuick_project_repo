import QtQuick            // moduł podstawowy QML
import QtQuick.Controls   // moduł kontrolek (Button, Slider itd.)

Rectangle {
    id: root
    color: "lightgrey"    // kolor tła
    width: 500            // szerokość okna
    height: 500           // wysokość okna

    Item {
        // --- LOGIKA WYŚRODKOWANIA I SKALOWANIA ---

        property int _minSide: Math.min(root.width, root.height)    //definicja zmiennej _minSide ktora przyjmuje wartosc najmniejsza z podanych
        // najmniejszy bok okna – używany do zachowania proporcji

        x: 10 + (root.width - _minSide) / 2
        // przesunięcie w poziomie, aby element był wyśrodkowany z marginesem 10px

        y: 10 + (root.height - _minSide) / 2
        // przesunięcie w pionie, analogicznie jak wyżej

        width: _minSide - 20
        height: _minSide - 20
        // kwadratowy obszar wewnętrzny z marginesem 20px

        scale: Math.min(width / background.sourceSize.width,        //wspolczynnik skali jest rowny mniejszej wartosci width / background.sourceSize.width lub height / background.sourceSize.height
                        height / background.sourceSize.height)
        // skalowanie obrazka tak, aby zmieścił się w obszarze Item
        // zachowuje proporcje

        transformOrigin: Item.TopLeft                               //przesuniecie itemu do gory lewo
        // skalowanie liczone od lewego górnego rogu

        // --- TŁO ZEGARA ---

        Image {
            id: background
            // source: "..."   // tutaj ustawiasz obrazek tarczy zegara
        }

        // --- MAŁA WSKAZÓWKA (np. sekundnik) ---

        Image {
            id: smallArm
            // source: "..."   // obrazek wskazówki

            x: background.width / 2 - width / 2
            // pozycjonowanie wskazówki na środku tarczy (poziomo)

            y: background.height / 2 - 914
            // pozycjonowanie pionowe – 914 to odległość środka obrotu od góry obrazka

            transform: Rotation {
                origin.x: smallArm.width / 2
                origin.y: 914
                // punkt obrotu wskazówki

                RotationAnimation on angle {
                    from: 0
                    to: 360 * 2         // dwa pełne obroty
                    duration: 60000     // 60 sekund
                    loops: Animation.Infinite
                    // animacja nieskończona
                }
            }
        }
    }

    // --- DUŻA WSKAZÓWKA (np. minutnik) ---

    Image {
        id: largeArm
        // source: "..."   // obrazek dużej wskazówki

        x: background.width / 2 - width / 2
        // wyśrodkowanie poziome

        y: background.height / 2 - 1255
        // pozycjonowanie pionowe – 1255 to odległość środka obrotu

        transform: Rotation {
            origin.x: largeArm.width / 2
            origin.y: 1255
            // punkt obrotu wskazówki

            angle: 90
            // startowy kąt obrotu

            RotationAnimation on angle {
                from: 0
                to: 360 * 24        // 24 obroty (np. 24 minuty)
                duration: 60000     // 60 sekund
                loops: Animation.Infinite
            }
        }
    }
}
