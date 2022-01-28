import 'dart:io';

num soma(num value) {
  num limit = value - 1;
  num amountMult3 = (limit / 3).floor();
  num amountMult5 = (limit / 5).floor();
  num amountMult15 = (limit / 15).floor();

  num lastMult3 = limit - (limit % 3);
  num lastMult5 = limit - (limit % 5);
  num lastMult15 = limit - (limit % 15);

  num sumMult3 = ((3 + lastMult3) * amountMult3) / 2;
  num sumMult5 = ((5 + lastMult5) * amountMult5) / 2;
  num sumMult15 = ((15 + lastMult15) * amountMult15) / 2;

  return (sumMult3 + sumMult5) - sumMult15;
}

void main() {
  stdout.write('Informe um valor numérico ');
  String? value = stdin.readLineSync();
  int? numValue;
  if (value == null || value.length == 0) {
    print("Execute novamente e insira algo, e que seja um valor numérico!");
    return;
  } else {
    numValue = int.tryParse(value);
    if (numValue == null) {
      print("Execute novamente e insira um valor numérico!");
      return;
    }
  }
  if (numValue < 0) {
    print("A entrada deve ser um inteiro positivo");
    return;
  }
  print(soma(numValue));
  return;
}
