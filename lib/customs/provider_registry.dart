import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:venon_flutter_test/customs/search_click_listner.dart';
final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => SearchListner()),
];
