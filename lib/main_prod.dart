import 'application/flavors.dart';
import 'package:be_sharp/application/run_app.dart';

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  await RunApp.runMyApp();
}
