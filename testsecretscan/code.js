const fs = require('fs');
const yaml = require('js-yaml');

// Carica il file YAML che contiene il segreto
const yamlFile = fs.readFileSync('config.yaml', 'utf8');
const secrets = yaml.safeLoad(yamlFile);

// Funzione per l'autenticazione utilizzando il segreto
function authenticate(secret) {
    // Simuliamo un'operazione di autenticazione confrontando il segreto
    if (secret === secrets.apiKey) {
        return true; // Autenticazione riuscita
    } else {
        return false; // Autenticazione fallita
    }
}

// Utilizzo della funzione di autenticazione
const userProvidedSecret = 'ilsegretoqui'; // Da sostituire con il segreto fornito dall'utente
if (authenticate(userProvidedSecret)) {
    console.log('Accesso consentito!');
} else {
    console.log('Accesso negato!');
}
