# Flutter lab

### Resources :
https://flutter.dev/docs/cookbook

https://flutter.dev/docs/resources/bootstrap-into-dart

https://dart.dev/codelabs

https://pub.dev/

### Firestore Doc
https://console.firebase.google.com/project/fir-flutter-codelab-cf878/authentication/users

### Flutter youtub playlist
https://www.youtube.com/playlist?list=PLOU2XLYxmsIJ7dsVN4iRuA7BT8XHzGtCr

### Firestore youtube playlist
https://www.youtube.com/playlist?list=PLl-K7zZEsYLluG5MCVEzXAQ7ACZBCuZgZ

Next Tuto : https://codelabs.developers.google.com/codelabs/friendlyeats-flutter?hl=en#0

### Flutter component Gallery

https://flutter.dev/docs/development/ui/widgets/material

### Flutter awesome 

https://flutterawesome.com/

## Notes

### Widgets

#### Layout

- Container
- Row
- Column

Column and row have mainAxisAlignment and cross AxisAlignment.

Container : custom style and alignment 

Row / Column when widget sits to next others

#### Row / Column children

- flexible
- expanded

#### Content Container

- Stack
- Card

#### Repeat Elements

- ListView
  - Constructors : List of children or a builder
  - Rendering is optimized with builder
- GridView
- ListTile

#### Content Types

- Text
- Image
- Icon

#### User input

- TextField
- RaisedButton / FlatButton
- GestureDetector
- InkWell



### Widget tree & element tree

| Widget tree                                                  | Element Tree                                       | Render tree                                       |
| ------------------------------------------------------------ | -------------------------------------------------- | ------------------------------------------------- |
| configuration (rebuild frequently)                           | Link widgets with redered objects (rarely rebuils) | rendered objects on the screen ( rarely rebuilds) |
| Container (<br />  Column(<br />Stateless()<br />Statefull ()<br />)<br />) | Container element                                  | Rendered box                                      |

### Widget lifecycle

Stateless : Constructor -> build

Statefull : Constructor -> initState() -> build() -> setState() -> didUpdateWidget() -> build()

### App life cycle

- inactive
- paused
- resumed
- suspending

