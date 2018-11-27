<?php
/** @noinspection SqlNoDataSourceInspection */
/** @noinspection SqlDialectInspection */

class SqlTooltipQueryGenerator {
    private static $languages = array(
        'grischun',
        'sursilvan',
        'sutsilvan',
        'surmiran',
        'puter',
        'vallader',
        'german',
        'french',
        'italian',
        'english');
    private static $searchQueries;

    public static function initSearchQueries() {
        foreach (self::$languages as $searchLanguage) {
            foreach (self::$languages as $displayLanguage) {
                if ($searchLanguage !== $displayLanguage) {
                    self::$searchQueries[$searchLanguage.'.'.$displayLanguage] = 
                        "SELECT ".$displayLanguage."_display as translation, ".
                        "       Source_Table_Name as sourceDict, ".
                        "       Source_Table_Row_ID as sourceId ".
                        "FROM Alllanguages ".
                        "WHERE ".$searchLanguage."_search LIKE lower(?) LIMIT 1";
                }
            }
        }
    }

    public static function getQuery(string $searchLanguage, string $displayLanguage) {
        return self::$searchQueries[$searchLanguage.'.'.$displayLanguage];
    }
}
SqlTooltipQueryGenerator::initSearchQueries();