"TestCase para simulaçõe de falha"
TestCase subclass: #TesteComunicacaoSCADA
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'SCADA-Tests'!

TesteComunicacaoSCADA >> testFalhaTimeout
    | clp scada |
    clp := CLP new enderecoIP: '192.168.1.10'.
    scada := SCADA new.
    clp rede: (RedeIndustrial new taxaPerdaPacotes: 1.0). "100% de perda"
    self assert: (clp verificarComunicacaoCom: scada) equals: 'Timeout'.
