import { renderLookupResult } from "./tooltip";
import { getSelectedLanguages } from "./menu";
import { generateCache } from "./cache";

const BACKEND_URL = "https://api.pledari.ch/index.php";

let cache = generateCache();
let translating = false;

export function queryTerm(lookupWord){
    lookupWord = lookupWord.toLowerCase().trim();

    const languages = getSelectedLanguages();

    if (languages.searchLang === languages.displayLang || !Boolean(lookupWord)) { //no lookupWord at all?
        renderLookupResult(null);
        return;
    }

    let cacheKey = languages.searchLang + "." + languages.displayLang + "." + lookupWord;
    let lookupResult = cache.get(cacheKey);
    if (lookupResult) {
        //console.log("cache hit for " + cacheKey);
        renderLookupResult(lookupResult);
        return;
    }

    //console.log("cache miss for " + cacheKey);
    if (translating) {
        //console.log("prevent translating " + cacheKey);
        return;
    }

    renderLookupResult(null); //hide tooltip while translating, we're hovering over a different word

    translating = true; //about to translate, prevent sending multiple parallel requests
    console.log("translating " + cacheKey);

    let url = new URL(BACKEND_URL);
    url.search = new URLSearchParams({searchLanguage: languages.searchLang, displayLanguage: languages.displayLang, searchTerm: lookupWord});

    fetch(url)
        .then(res => res.json())
        .then((data) => {
            renderLookupResult(data);
            if (!data || !data.translation) {
                //nothing was found, prevent further lookups
                data = ".";
            }
            cache.set(cacheKey, data);
        })
        .catch((error) => {
            console.warn("failed contacting translation backend: " + error);
        })
        .finally(() => {
            translating = false;
            console.log("done translating");
        });
}
