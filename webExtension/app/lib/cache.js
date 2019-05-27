import lru, {LRUMap} from 'lru_map';

const LRU_CACHE_SIZE = 1024;

export function generateCache() {
    return new LRUMap(LRU_CACHE_SIZE);
}
