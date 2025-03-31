"Estado base para comunicação"
Object subclass: #EstadoComunicacao
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'SCADA-Simulator'!

"Subclasses para estados específicos"
EstadoComunicacao subclass: #ComunicacaoOK
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'SCADA-Simulator'!

EstadoComunicacao subclass: #ComunicacaoFalha
    instanceVariableNames: 'motivo'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'SCADA-Simulator'!
