# AceleraMakerEX3
# Projeto COBOL - Cálculo de Salário Final

## Descrição

Este projeto foi desenvolvido em COBOL com o objetivo de calcular o salário final de um funcionário com base no seu salário inicial e no tempo de empresa.

O programa recebe os dados do funcionário, calcula o bônus conforme o tempo trabalhado e exibe o salário base, o valor do bônus e o salário final.

## Autor

Vitor leite

## Funcionalidades

O programa permite:

- Informar o nome do funcionário;
- Informar o salário base;
- Informar o tempo de empresa;
- Calcular o bônus conforme o tempo de empresa;
- Calcular o salário final;
- Exibir o resultado formatado;
- Repetir o cálculo enquanto o usuário desejar.

## Regra de cálculo do bônus

O bônus é calculado da seguinte forma:

| Tempo de empresa | Bônus |
|------------------|-------|
| Até 1 ano        |   5%  |
| De 2 a 5 anos    |  10%  |
| Acima de 5 anos  |  15%  |

## Estrutura do programa

O programa foi organizado utilizando parágrafos na `PROCEDURE DIVISION`.

Principais parágrafos:

- `MAIN-PROCEDURE`: controla o fluxo principal do programa;
- `MENUSAL`: exibe o menu e recebe a opção do usuário;
- `ENTRADA-DADOS`: recebe os dados do funcionário;
- `CALCULA-BONUS`: calcula o bônus conforme o tempo de empresa;
- `CALCULA-SALARIO`: calcula o salário final;
- `EXIBE-RESULTADO`: exibe os dados calculados.

