let salario =9.898;
let aluguel =2.576;
let contas =1.934;
let extras =2.565;
let saldo= salario- (aluguel + contas +extras);

console.log("Seu salario mensal é", salario);
console.log("voce paga" ,aluguel, "de aluguel",contas, "de contas e tem", extras, "de gastos extras");
console.log("seu saldo disponivel é",saldo.toFixed(3));
