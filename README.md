# Schere, Stein, Papier Projekt

Euer erstes Projekt mit Flutter!

Auf dieser Seite findet ihr die letzten Updates, an denen wir gemeinsam gearbeitet haben, falls ihr euren Fortschritt mal versehentlich nicht gespeichert habt. Darüber hinaus findet ihr hier auch alle wichtigen Informationen, um das Projekt nach euren eigenen Wünschen umzugestalten.

## Download

Zum Download des Projekts, müsst ihr zuerst auf den grünen Code Button oben auf dieser Seite und im Anschluss auf Download ZIP klicken. Nach dem Download entpackt ihr das Projekt am besten in einem neu erstellten Ordner `Flutter` in euren Dokumenten.

Der Pfad für das von mir heruntergeladene Projekt sieht dann wie folgt aus:

```
C:\Users\Marvin\Documents\Flutter\hacker_school\..
```

## Flutter

Das Framework Flutter benutzt eine Reihe sehr simpler Bausteine, um die Benutzeroberfläche einer App zu programmieren. Dabei können mit diesen sogenannten Widgets die folgenden Darstellungen erzeugt werden:

| Widget | Beschreibung |
| --- | --- |
| <pre>SizedBox(<br>  child: ...,<br>) | Ein Widget kann in eine Box mit nur veränderbarer Größe eingefügt werden. |
| <pre>Container(<br>  child: ...,<br>) | Ein Widget kann in eine Box mit verschiedenen Eigenschaften wie zum Beispiel Größe, Farbe oder Ausrichtung eingefügt werden. |dabei 
| <pre>Row(<br>  children: [<br>    ...,<br>    ...,<br>  ],<br>) | Mehrere Widgets können nebeneinander angeordnet werden und müssen bei der Auflistung mit Kommata getrennt werden. |
| <pre>Column(<br>  children: [<br>    ...,<br>    ...,<br>  ],<br>) | Mehrere Widgets können untereinander angeordnet werden und müssen bei der Auflistung mit Kommata getrennt werden. |
| <pre>Center(<br>  child: ...,<br>) | Zentriert ein Widget in dem zur Verfügung stehenden Platz. |
| <pre>Padding(<br>  padding: ...,<br>  child: ...,<br>) | Erstellt einen Abstand zu allen Seiten innerhalb des zur Verfügung stehenden Platzes des Widgets. |
| <pre>Scaffold(<br>  body: ...,<br>) | Dient als Gerüst für jede neue Seite einer App und definiert vorgegebene Plätze für Widgets. |
| <pre>Text('...') | Erstellt einen Text, welcher innerhalb der Anführungszeichen definiert werden muss. |

Für jedes Widget gibt es eine Menge verschiedener Eigenschaften, die mithilfe von Visual Studio Code in Erfahrung gebracht werden können. Richtet man die Maus genau über dem ausgeschriebenen Widget aus, werden einem alle möglich einzustellenden Eigenschaften mit einer zusätzlichen Beschreibung zum Widget angezeigt. Andernfalls gibt es auch die sehr ausführliche [Dokumentation](https://docs.flutter.dev/development/ui/widgets) für alle von Flutter zur Verfügung gestellten Widgets.

Zuletzt ist noch wichtig zu erwähnen, dass jedes Widget nur dann angezeigt wird, sofern es in der `build` Methode eines `Stateless` (ist statisch und kann nicht mehr abgeändert werden) oder `Stateful` (erlaubt ein Update der Benutzeroberfläche mit `setState(() {})`) Widgets aufgelistet wird und eine Verbindung zum `Scaffold` hat. Eigene Zusammenstellungen mehrerer verschiedener Widgets können so wiederum zu einem komplett neuen Widget zusammengefasst werden.

## Visual Studio Code

Im Laufe unseres Kurses benutze ich eine Reihe von Tastaturbefehlen, die nicht unbedingt benötigt werden, auf Dauer aber sehr hilfreich sind. Für diejenigen die daran interessiert sind, habe ich die wichtigsten hier aufgelistet sind:

| Tastenkombination | Beschreibung |
| --- | --- |
| `Shift` + `Alt` + `F` | Formatiert euren Code, sofern ihr keine Fehler habt. |dabei 
| `Strg` + `S` | Speichert aktuelles Dokument und aktualisiert das Projekt. |
| `Strg` + `Space` | Zeigt euch Code Vorschläge zum vervollständigen an. |
| `Strg` + `.` | Lässt euch bereits geschriebenen Code anpassen. |
| `Strg` + `#` | Wandelt eine Zeile in einen Kommentar um. |
| `F2` | Ändert den Namen einer Variable im gesamten Projekt. |

## Schlusswort

Falls es irgendwelche Verbesserungsvorschläge zu dieser Seite gibt, könnt ihr sie mir gerne zu jeder Zeit mitteilen. Ich bemühe mich euch das Programmieren mit Flutter so verständlich wie möglich zu machen und hoffe ihr habt während des Kurses genauso viel Spaß wie ich!

### Offizielle Links

- [Flutter Framework](https://flutter.dev)
- [Dart Programmiersprache](https://dart.dev)
- [Visual Studio Code](https://code.visualstudio.com)