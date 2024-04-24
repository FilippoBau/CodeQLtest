const fs = require('fs');
const yaml = require('js-yaml');


try {
    const fileContents = fs.readFileSync('config.yaml', 'utf8');
    const data = yaml.safeLoad(fileContents);


    const secret = data.secret;


    console.log('Il secret estratto dal file YAML è:', secret);



} catch (e) {
    console.log('Si è verificato un errore durante la lettura del file YAML:', e);
}
