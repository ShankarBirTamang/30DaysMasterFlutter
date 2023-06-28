import 'package:owlbot_dart/owlbot_dart.dart';

void main() async {
    /// Instiantiate the `OwlBot` with [token] which you can get for free from https://owlbot.info
    final OwlBot owlBot = OwlBot(token: "ee720b9c1e38bfa6fcbb2ebf8ca220cc66a3d381");

    /// Using the [define] function, get the definitions of the provided [word]
    /// [OwlBotResponse] object is returned
    final  res = await owlBot.define(word: "harder");
    print("Pronounciation: ${res!.pronunciation}");
    res.definitions!.forEach((def) {
        print(def.definition);
    });
}