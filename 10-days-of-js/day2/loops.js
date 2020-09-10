'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the vowelsAndConsonants function.
 * Print your output using 'console.log()'.
 */
function vowelsAndConsonants(s) {
    let vowels = ['a', 'e', 'i', 'o', 'u']
    let sVowels = []
    let sConsonants = []
    for(let i=0; i < s.length; i++) {
        if (vowels.includes(s[i])) {
            sVowels.push(s[i])
        } else {
            sConsonants.push(s[i])
        }
    }
    
    for(let i=0; i < sVowels.length; i++) {
        console.log(sVowels[i])
    }

    for(let i=0; i < sConsonants.length; i++) {
        console.log(sConsonants[i])
    }
}


function main() {
    const s = readLine();
    
    vowelsAndConsonants(s);
}