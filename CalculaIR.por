/* Um algoritmo é um conjunto de instruções e procedimentos lógicos para a solução de um determinado problema.	
 * Vamos pensar na declaração do Imposto de Renda de Pessoa Física (IRPF): elaborar um algoritmo para calcular o imposto de renda mensal a
 * ser pago por um indivíduo a partir do seu salário bruto mensal e quantidade de dependentes.

 * Para encontrar a base de cálculo do IRPF, é preciso subtrair do salário bruto de um contribuinte a alíquota do INSS (Tabela 1) 
 * e o valor referente aos dependentes (R$189,59 por dependente). Os valores das alíquotas para cálculo do imposto estão na Tabela 2:
 */
programa
{
	funcao inicio()
	{
		real salario, base_calculo, imposto, deducao_dependente
		inteiro qt_dependentes
		escreva("Informe seu salário R$: ")
		leia(salario)
		escreva("Quantos dependentes você possui? ")
		leia(qt_dependentes)

		// Cálculo para dedução dos dependentes
		deducao_dependente = qt_dependentes * 189.59
		
		// Cálculo do INSS
		se (salario <= 1045) 
		{
			base_calculo = salario * 0.925 - deducao_dependente
		}
		senao se (1045 < salario e salario <= 2089.60)
		{
			base_calculo = salario * 0.91 - deducao_dependente
		}
		senao se (2089.60 < salario e salario <= 3134.40)
		{
			base_calculo = salario * 0.88 - deducao_dependente
		}
		senao se (3134.40 < salario e salario <= 6110.06)
		{
			base_calculo = salario * 0.86 - deducao_dependente
		}
		senao
		{
			escreva("\nValor de contribuição para INSS não foi definido para este salário!!")
			base_calculo = 0.0
			
		}

		// Cálculo do imposto
		se (1903.99 <= base_calculo e base_calculo  <= 2826.65)
		{
			imposto = (base_calculo - 142.80) * 0.075
		}
		senao se (2826.66 <= base_calculo e base_calculo <= 3751.05)
		{
			imposto = (base_calculo - 354.80) * 0.15
		}
		senao se (3751.06 <= base_calculo e base_calculo <= 4664.68)
		{
			imposto = (base_calculo - 636.13) * 0.225
		}
		senao se (base_calculo > 4664.68)
		{
			imposto = (base_calculo - 869.36) * 0.275
		}
		senao
		{
			imposto = 0.0
		}

		//apresentação do resultado ao usuário
		escreva("\nVocê vai pagar de Imposto de Renda o vaor de R$ ", imposto)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1984; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */