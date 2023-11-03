import 'package:flutter/cupertino.dart';
import 'package:client_flutter/widget_memory_painter.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';

class WidgetMemory extends StatefulWidget {
  const WidgetMemory({Key? key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => WidgetMemoryState();

}

class WidgetMemoryState extends State<WidgetMemory> {

  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);

    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context)
            .size
            .width, // Ocupa tot l'ample de la pantalla
        height: MediaQuery.of(context).size.height -
            56.0, // Ocupa tota l'altura disponible menys l'altura de l'AppBar
        child: CustomPaint(
          painter: WidgetMemoryPainter(appData),
        ),
      ),
    );
  }

}