import 'package:policyapp/provider/loadingProvider.dart';
import 'package:provider/provider.dart';



var allProvider = [
  ChangeNotifierProvider<LoadingProvider>(
    create: (_) => LoadingProvider(),
    lazy: true,
  ),

];
