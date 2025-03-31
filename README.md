# 🏭 Simulador de Comunicação CLP-SCADA em Smalltalk

**Projeto prático para simulação e diagnóstico de falhas em sistemas industriais**

## 📁 Estrutura do Repositório

Seu projeto está organizado em 4 arquivos essenciais:

1. **`classes-basicas.st`**  
   Contém a definição das classes fundamentais:
   - `CLP` (Controlador Lógico Programável)
   - `SCADA` (Sistema de Supervisão)
   - `RedeIndustrial` (Infraestrutura de comunicação)

2. **`implementando-estados-comunicação.st`**  
   Implementa o padrão State para gerenciar:
   - `EstadoComunicacao` (classe base)
   - `ComunicacaoOK` (estado normal)
   - `ComunicacaoFalha` (estado de erro)

3. **`simulando-falhas.st`**  
   Métodos para simular cenários de falha:
   - Perda de pacotes
   - Timeout de comunicação
   - Configurações incorretas

4. **`simulacoes-automatizadas.st`**  
   Casos de teste prontos para validação

## 🚀 Como Usar

### 1. Carregando o Projeto
No Pharo/Squeak:
```smalltalk
"Execute em um Workspace:"
Metacello new
    baseline: 'SCADASimulator';
    repository: 'git://github.com/Montesandre/Modelando-Falhas-Comunicacao-CLP-SCADA-in-Smalltalk';
    load.
```

### 2. Executando Simulações
```smalltalk
"Exemplo básico de uso"
| rede clp scada |
rede := RedeIndustrial new.
clp := CLP new enderecoIP: '192.168.1.10'.
scada := SCADA new.

"Configura cenário de teste"
rede simulando-falhas simularPerdaDePacotes: 0.7. "70% de perda"
scada monitorar: clp.

"Verifica resultados"
scada detectarFalhas.
```

## 🔍 Testes Disponíveis
Seu repositório inclui exemplos prontos em `simulacoes-automatizadas.st`:
```smalltalk
"Teste de comunicação estável"
SCADATeste testComunicacaoEstavel.

"Teste de falha crítica"
SCADATeste testFalhaCritica.
```

## 💡 Dicas de Personalização

1. **Para adicionar novos tipos de falha**:
   ```smalltalk
   "Edite simulando-falhas.st"
   ComunicacaoFalha subclass: #FalhaCabos
       instanceVariableNames: 'localizacao'
       classVariableNames: ''
       package: 'SCADA-Simulator'.
   ```

2. **Para integrar com seu ambiente**:
   ```smalltalk
   "Configure com seus endereços reais"
   CLP new
       enderecoIP: '192.168.0.100';
       portaModbus: 502;
       adicionarVariavel: 'Temperatura'.
   ```

## 🛠️ Fluxo de Trabalho Recomendado

1. Modifique `classes-basicas.st` para adicionar novos dispositivos
2. Atualize `implementando-estados-comunicação.st` para novos estados
3. Crie novos cenários em `simulando-falhas.st`
4. Valide com testes em `simulacoes-automatizadas.st`

## 📈 Próximos Passos Possíveis

- Adicionar visualização gráfica dos estados
- Implementar padrão Observer para notificações
- Criar relatórios automáticos em PDF

## ❓ Suporte

Para dúvidas ou sugestões:
- Abra uma Issue no repositório
- Consulte a documentação do Pharo/Squeak

---

**Desenvolvido por [Seu Nome]**  
"Simulação realista para problemas reais na indústria 4.0" 🏭💡
