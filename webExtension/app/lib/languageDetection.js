import franc from "./franc-all";
import {setSearchLanguage} from "./menu";


export function detectLanguage() {
    const language = franc(document.body.textContent);

    let textLanguage = 'grischun';
    switch (language) {
        case 'roh_rumgr':
            textLanguage = 'grischun';
            break;
        case 'roh_sursilv':
            textLanguage = 'sursilvan';
            break;
        case 'roh_sutsilv':
            textLanguage = 'sutsilvan';
            break;
        case 'roh_surmiran':
            textLanguage = 'surmiran';
            break;
        case 'roh_puter':
            textLanguage = 'puter';
            break;
        case 'roh_vallader':
            textLanguage = 'vallader';
            break;
        case 'eng':
            textLanguage = 'english';
            break;
        case 'ita':
            textLanguage = 'italian';
            break;
        case 'fra':
            textLanguage = 'french';
            break;
        case 'deu':
            textLanguage = 'german';
            break;
    }
    console.log("detected language: " + textLanguage);

    setSearchLanguage(textLanguage);
}
