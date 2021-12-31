import 'dart:io';
void main(){
  dynamic v = easySearch();
  print(v);
  
}

dynamic easySearch(){
  stdout.writeln("Enter the first and last letter and range:");
  String? entb = stdin.readLineSync();

  dynamic dicts = {
     'ace': 'of the highest quality',
     'age': 'how long something has existed',
     'agree': 'be in accord; be in agreement',
     'abate': 'make less active or intense',
     'abatement': "an interruption in the intensity or amount of something",
     'aggregate': 'the whole amount',
     'name': 'a language unit by which a person or thing is known',
     'nice': 'pleasant or pleasing in nature',
     'nominate': 'propose as a candidate for some honor',
     'seven': 7,
     'zacchaeus': 'MY NAME LOL...'
    };

  var get = "$entb".split(' ');
  
  var first = get[0];
  var last = get[1];

  var numMin = int.parse(get[get.length -2]);
  var numMax = int.parse(get[get.length -1]);
  
  List vBag = [];

  for (dynamic dict in dicts.entries){
    
    if (dict.key[0] == first && dict.key[dict.key.length -1] == last && numMin <= dict.key.length && dict.key.length <= numMax)
    {
      vBag.add("\n");
      vBag.add(dict.key + " : " + dict.value);
    }  
  };
  
  return  vBag.toString().replaceAll("[", "").replaceAll("]", "").replaceAll(",", "");
}