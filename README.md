
# Modern Textfield

A advance and modern textfield package using which you can create multiple texfield widgets. The package contains multiple features such as adding show hide password icon, making textfield input type as only numbers and more.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  modern_textfield: ^0.0.3
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:modern_textfield/modern_textfield.dart';
```

## Example
There are a number of properties that you can modify:

- Background color
- Custom leading and trailing icons
- Custom leading and trailing widgets
- Specify textfield type is text or number or password
- Border radius
- Much more......

<hr>

<table>
<tr>
<td>

```dart
class ModerTextFieldScreen extends StatelessWidget {  
  const ModerTextFieldScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: ModernTextField(
          iconBackgroundColor: Colors.pink,
          borderRadius: 20,
          customTextFieldIcon: const Icon(
            Icons.accessibility_new_rounded,
            color: Colors.white,
          ),
          hintText: "Enter Your Hint",
          trailingWidget: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.pink,
            ),
          ),
        ), 
      ),  
    );  
  }  
}
```

</td>
<td>
<img  src="http://itsodoo.com/wp-content/uploads/2023/09/modern_textfield_examples_screenshot.jpeg"  alt="">
</td>
</tr>
</table>