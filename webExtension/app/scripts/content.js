import { initTooltip } from '../lib/tooltip';
import {initMenu} from "../lib/menu";
import { generateCache } from "../lib/cache";

let cache;

initTooltip();
initMenu();
cache = generateCache();
