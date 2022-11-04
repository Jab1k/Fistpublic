import 'dart:convert' as convert;
import 'model.dart';
import 'package:http/http.dart' as http;

getmybool({required int a, required int b}) {
  if (a == b) {
    return 'True';
  } else {
    return 'False';
  }
}

Future Apimodel() async {
  final url = Uri.parse('https://api.nationalize.io/?name=nathaniel');
  final res = await http.get(url);
  final data = convert.jsonDecode(res.body);

  Api a = Api.fromJson(data);
  return a;
}

void main(List<String> args) async {
  //! 1 - masala
  // print(getmybool(a: 12, b: 12));
  //! 2 - masala
  Book bok = Book('jabikjan', 12);
  //! 3 - masala
  var b = await Apimodel();
  // print(b.country);
  // print(b.name);
  //! 4 - masala
  Worker worker = Worker();
  Person odam = Person();
  // worker.doSome();
  // odam.doSome();
  //! 5 - masala
  Hp hp = Hp();
  hp.getModel();
  hp.getValume();
  hp.printInfo();
}
