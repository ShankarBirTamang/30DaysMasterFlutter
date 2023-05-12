import 'dart:io';
import 'dart:math';

void main(){
  /// input data 
  print("Enter Initial Investment Amount (Principal) : " );//principal
  int? principal = int.parse(stdin.readLineSync()!);

  print("Enter investment period in years: "); // time
  int? timeInYear = int.parse(stdin.readLineSync()!);

  print("Enter nominal interest rate(decimal):"); // interest rate
  double? nominalInterestRate = double.parse(stdin.readLineSync()!) ;

  print("""Input compounding period : 
    Annualy compounding      = 1 
    Semi-annualy compounding = 2
    Quaterly compounding     = 4
    Monthly compounding      = 12
  """);
  int? compoundingInterval = int.parse(stdin.readLineSync()!) ;

  //calculation of effective interest rate and total Balance
  double effectiveIntRate = calculateEffectiveInterestRate(compoundingInterval, nominalInterestRate);
  double Balance = calculateTotalAmt(principal, timeInYear, compoundingInterval, nominalInterestRate);


  //display result
  print("""The Total Amount with Effective Interest rate of ${effectiveIntRate.toStringAsFixed(2)}% after $timeInYear years is : Rs. ${Balance.toStringAsFixed(2)}""");
  // displaying in table format showing yearly accruied interest and balance
  print("Yearly Breakdown Table : ");
  print("Year \t\t Interest \t Accruied Interest \t Balance ");
  print("________________________________________________________________________________");
  for(int year=1 ; year <=timeInYear ; year++ ){
    double Balance = calculateTotalAmt(principal, year, compoundingInterval, nominalInterestRate);
    double accruiedInterest = calculateAccruedInterest(principal, year, compoundingInterval, nominalInterestRate);
    double prevAccruiedInterest = calculateAccruedInterest(principal, year-1, compoundingInterval, nominalInterestRate);
    double Interest = accruiedInterest - prevAccruiedInterest ;
    print("$year \t\t ${Interest.toStringAsFixed(2)} \t\t ${accruiedInterest.toStringAsFixed(2)} \t ${Balance.toStringAsFixed(2)} ");
  }

}


double calculateTotalAmt(int p , int t , int n , double r){
    double totalAmount = p.toDouble() * pow((1+r/n), n*t);
    return totalAmount;
}

double calculateAccruedInterest(int p , int t , int n , double r){
  if (t<0)
   return 0;
  else {
    double aInteret = p*(pow(1+r/n, n*t)-1);
    return aInteret;
   }
}

double calculateEffectiveInterestRate( int n , double r){
    double effectiveIntRate = 100*(pow(1+r/n, n)-1) ;
    return effectiveIntRate ;
}