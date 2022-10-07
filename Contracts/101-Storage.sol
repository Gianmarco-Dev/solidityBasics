// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// ^(versione) => Dalla versione del compilatore in parametro a salire
// >=(versioneMin) <(versioneMax) => Intervallo di compilatori validi
// SPDX:(tipo di licenza, es. MIT) => Per rendere licenza e sharing del codice piu facili.

contract Storage {
    // Types
    // Boolean
    // uint(unsigned integer, valore assoluto ),
    // int(valore positivo o negativo),
    // address (indirizzo account),
    // bytes

    // Different types, different variables.

    // Con uint posso specificare quanti bytes allocare per un dato numero.
    // Varia da uint8 a uint256. Se non specificato, il valore standard e' 256

    // Esempio

    bool isCollector = true;
   // uint256 totalCollected = 5;
    string totalCollectedText = "Five";
    int256 canBeNegative = -5;
    address myAddress = 0xBaefE278e8daeDe5bf86a438f88AcE85d3e5962b;
    bytes32 favoriteBytes = "cat";

    // se dichiaro e non inizializzo, il valore predefinito e' zero.



    // FUNCTION

    // Le funzioni, o metodi, sono moduli che eseguono specifici set di istruzioni quando vengono invocate.
    // Scope & Visibility: 
    // Public, visibile esternamente e internamente
    // private, solamente visibile all'interno del contract e solo quel contratto puo invocarle.
    // internal, Solo visibili internamente
    // external,  solo visibile esternamente (ma per funzioni), per esempio message-called con "this.func". 
    // ! Possono essere invocate da contract esterni !

    // View e Pure sono keyword che, se inserite in una function, non implicano consumo di gas.
    // Disabilitano la modifica di stato. Con view rimane leggibile. Pure disabilita anche la lettura.
    // Se invece invochiamo una view o pure in una funzione che ha un execution cost, allora quella chiamata consumera' gas.
    
    uint256 public totalCollected; 
    // Ogni public variable ha con se una funzione getter per ottenerne il valore.
    
    function store(uint256 _totalCollected) public {
        totalCollected = _totalCollected; // Istruzione
        totalCollected = _totalCollected + 1; // Istruzione
    }

    function retrieve() public view returns(uint256){
        return totalCollected;
    }
}