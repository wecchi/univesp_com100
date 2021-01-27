programa
{
	
	funcao inicio()
	{
		inteiro N, X, A, RESP, EXP, B
		escreva("Valor de N? ")
		leia(N)
		escreva("Valor de X? ")
		leia(X)
		A = 2
		RESP = X
		enquanto (A<=N) {
			EXP = X
			B = 1
			enquanto(B<A){
				EXP = EXP * X
				B = B + 1
			}
			RESP = RESP + EXP
			A = A + 2
		}
		escreva("\n","O valor de RESP é ", RESP, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */