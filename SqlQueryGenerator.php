<?php
/** @noinspection SqlNoDataSourceInspection */
/** @noinspection SqlDialectInspection */

class SqlQueryGenerator
{
    public static function generateEnQuery(string $pled, string $direcziun, string $modus): string {
        $SQLString_0_exact = "SELECT * FROM `mypledari` WHERE `B2` LIKE '$pled' OR `B2` LIKE '%, $pled' OR `B2` LIKE '%, $pled, %' OR `B2` LIKE '$pled, %'";
        $SQLString_0_entschatta = "SELECT * FROM `mypledari` WHERE `B2` LIKE '$pled%' OR `B2` LIKE '%, $pled%'";
        $SQLString_0_intern = "SELECT * FROM `mypledari` WHERE `B2` LIKE '%$pled%'";
        $SQLString_0_finiziun = "SELECT * FROM `mypledari` WHERE `B2` LIKE '%$pled' OR `B2` LIKE '%$pled, %'";

        $SQLString_1_exact = "SELECT * FROM `mypledari` WHERE `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR `A2` LIKE '$pled, %'";
        $SQLString_1_entschatta = "SELECT * FROM `mypledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%'";
        $SQLString_1_intern = "SELECT * FROM `mypledari` WHERE `A2` LIKE '%$pled%'";
        $SQLString_1_finiziun = "SELECT * FROM `mypledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %'";

        $SQLString_2_exact = "SELECT * FROM `mypledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %'";
        $SQLString_2_entschatta = "SELECT * FROM `mypledari` WHERE `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%'";
        $SQLString_2_intern = "SELECT * FROM `mypledari` WHERE `D2` LIKE '%$pled%'";
        $SQLString_2_finiziun = "SELECT * FROM `mypledari` WHERE `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %'";

        $SQLString_3_exact = "SELECT * FROM `mypledari` WHERE `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %'";
        $SQLString_3_entschatta = "SELECT * FROM `mypledari` WHERE `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%'";
        $SQLString_3_intern = "SELECT * FROM `mypledari` WHERE `E2` LIKE '%$pled%'";
        $SQLString_3_finiziun = "SELECT * FROM `mypledari` WHERE `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %'";

        $SQLString_4_exact = "SELECT * FROM `mypledari` WHERE `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %'";
        $SQLString_4_entschatta = "SELECT * FROM `mypledari` WHERE `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%'";
        $SQLString_4_intern = "SELECT * FROM `mypledari` WHERE `F2` LIKE '%$pled%'";
        $SQLString_4_finiziun = "SELECT * FROM `mypledari` WHERE `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %'";

        $SQLString_5_exact = "SELECT * FROM `mypledari` WHERE `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %'";
        $SQLString_5_entschatta = "SELECT * FROM `mypledari` WHERE `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%'";
        $SQLString_5_intern = "SELECT * FROM `mypledari` WHERE `G2` LIKE '%$pled%'";
        $SQLString_5_finiziun = "SELECT * FROM `mypledari` WHERE `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %'";

        $SQLString_6_exact = "SELECT * FROM `mypledari` WHERE `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %'";
        $SQLString_6_entschatta = "SELECT * FROM `mypledari` WHERE `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_6_intern = "SELECT * FROM `mypledari` WHERE `H2` LIKE '%$pled%'";
        $SQLString_6_finiziun = "SELECT * FROM `mypledari` WHERE `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_7_exact = "SELECT * FROM `mypledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %' OR `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %' OR `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %' OR `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %' OR `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %' OR `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR 
`A2` LIKE '$pled,%'";
        $SQLString_7_entschatta = "SELECT * FROM `mypledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%' OR `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%' OR `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%' OR `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%' OR `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%' OR `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_7_intern = "SELECT * FROM `mypledari` WHERE `A2` LIKE '%$pled%' OR `D2` LIKE '%$pled%' OR `E2` LIKE '%$pled%' OR `F2` LIKE '%$pled%' OR `G2` LIKE '%$pled%' OR `H2` LIKE '%$pled%'";
        $SQLString_7_finiziun = "SELECT * FROM `mypledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %' OR `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %' OR `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %' OR `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %' OR `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %' OR `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_8_exact = "SELECT * FROM `mypledari` WHERE `J2` LIKE '$pled'";
        $SQLString_8_entschatta = "SELECT * FROM `mypledari` WHERE `J2` LIKE '$pled%'";
        $SQLString_8_intern = "SELECT * FROM `mypledari` WHERE `J2` LIKE '%$pled%'";
        $SQLString_8_finiziun = "SELECT * FROM `mypledari` WHERE `J2` LIKE '%$pled'";

        $SQLString_9_exact = "SELECT * FROM `mypledari` WHERE `J1` LIKE '$pled'";
        $SQLString_9_entschatta = "SELECT * FROM `mypledari` WHERE `J1` LIKE '$pled%'";
        $SQLString_9_intern = "SELECT * FROM `mypledari` WHERE `J1` LIKE '%$pled%'";
        $SQLString_9_finiziun = "SELECT * FROM `mypledari` WHERE `J1` LIKE '%$pled'";


        $SQLString2 = @"SQLString_".@$direcziun."_".@$modus;
        return @$$SQLString2;
    }

    public static function generateDeQuery(string $pled, string $direcziun, string $modus): string {
        $SQLString_0_exact = "SELECT * FROM `meinpledari` WHERE `B2` LIKE '$pled' OR `B2` LIKE '%, $pled' OR `B2` LIKE '%, $pled, %' OR `B2` LIKE '$pled, %'";
        $SQLString_0_entschatta = "SELECT * FROM `meinpledari` WHERE `B2` LIKE '$pled%' OR `B2` LIKE '%, $pled%'";
        $SQLString_0_intern = "SELECT * FROM `meinpledari` WHERE `B2` LIKE '%$pled%'";
        $SQLString_0_finiziun = "SELECT * FROM `meinpledari` WHERE `B2` LIKE '%$pled' OR `B2` LIKE '%$pled, %'";

        $SQLString_1_exact = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR `A2` LIKE '$pled, %'";
        $SQLString_1_entschatta = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%'";
        $SQLString_1_intern = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '%$pled%'";
        $SQLString_1_finiziun = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %'";

        $SQLString_2_exact = "SELECT * FROM `meinpledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %'";
        $SQLString_2_entschatta = "SELECT * FROM `meinpledari` WHERE `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%'";
        $SQLString_2_intern = "SELECT * FROM `meinpledari` WHERE `D2` LIKE '%$pled%'";
        $SQLString_2_finiziun = "SELECT * FROM `meinpledari` WHERE `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %'";

        $SQLString_3_exact = "SELECT * FROM `meinpledari` WHERE `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %'";
        $SQLString_3_entschatta = "SELECT * FROM `meinpledari` WHERE `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%'";
        $SQLString_3_intern = "SELECT * FROM `meinpledari` WHERE `E2` LIKE '%$pled%'";
        $SQLString_3_finiziun = "SELECT * FROM `meinpledari` WHERE `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %'";

        $SQLString_4_exact = "SELECT * FROM `meinpledari` WHERE `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %'";
        $SQLString_4_entschatta = "SELECT * FROM `meinpledari` WHERE `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%'";
        $SQLString_4_intern = "SELECT * FROM `meinpledari` WHERE `F2` LIKE '%$pled%'";
        $SQLString_4_finiziun = "SELECT * FROM `meinpledari` WHERE `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %'";

        $SQLString_5_exact = "SELECT * FROM `meinpledari` WHERE `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %'";
        $SQLString_5_entschatta = "SELECT * FROM `meinpledari` WHERE `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%'";
        $SQLString_5_intern = "SELECT * FROM `meinpledari` WHERE `G2` LIKE '%$pled%'";
        $SQLString_5_finiziun = "SELECT * FROM `meinpledari` WHERE `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %'";

        $SQLString_6_exact = "SELECT * FROM `meinpledari` WHERE `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %'";
        $SQLString_6_entschatta = "SELECT * FROM `meinpledari` WHERE `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_6_intern = "SELECT * FROM `meinpledari` WHERE `H2` LIKE '%$pled%'";
        $SQLString_6_finiziun = "SELECT * FROM `meinpledari` WHERE `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_7_exact = "SELECT * FROM `meinpledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %' OR `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %' OR `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %' OR `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %' OR `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %' OR `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR 
`A2` LIKE '$pled,%'";
        $SQLString_7_entschatta = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%' OR `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%' OR `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%' OR `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%' OR `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%' OR `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_7_intern = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '%$pled%' OR `D2` LIKE '%$pled%' OR `E2` LIKE '%$pled%' OR `F2` LIKE '%$pled%' OR `G2` LIKE '%$pled%' OR `H2` LIKE '%$pled%'";
        $SQLString_7_finiziun = "SELECT * FROM `meinpledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %' OR `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %' OR `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %' OR `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %' OR `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %' OR `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_8_exact = "SELECT * FROM `meinpledari` WHERE `J2` LIKE '$pled'";
        $SQLString_8_entschatta = "SELECT * FROM `meinpledari` WHERE `J2` LIKE '$pled%'";
        $SQLString_8_intern = "SELECT * FROM `meinpledari` WHERE `J2` LIKE '%$pled%'";
        $SQLString_8_finiziun = "SELECT * FROM `meinpledari` WHERE `J2` LIKE '%$pled'";

        $SQLString_9_exact = "SELECT * FROM `meinpledari` WHERE `J1` LIKE '$pled'";
        $SQLString_9_entschatta = "SELECT * FROM `meinpledari` WHERE `J1` LIKE '$pled%'";
        $SQLString_9_intern = "SELECT * FROM `meinpledari` WHERE `J1` LIKE '%$pled%'";
        $SQLString_9_finiziun = "SELECT * FROM `meinpledari` WHERE `J1` LIKE '%$pled'";

        $SQLString2 = @"SQLString_".@$direcziun."_".@$modus;
        return @$$SQLString2;
    }

    public static function generateItQuery(string $pled, string $direcziun, string $modus): string {
        $SQLString_0_exact = "SELECT * FROM `miopledari` WHERE `B2` LIKE '$pled' OR `B2` LIKE '%, $pled' OR `B2` LIKE '%, $pled, %' OR `B2` LIKE '$pled, %'";
        $SQLString_0_entschatta = "SELECT * FROM `miopledari` WHERE `B2` LIKE '$pled%' OR `B2` LIKE '%, $pled%'";
        $SQLString_0_intern = "SELECT * FROM `miopledari` WHERE `B2` LIKE '%$pled%'";
        $SQLString_0_finiziun = "SELECT * FROM `miopledari` WHERE `B2` LIKE '%$pled' OR `B2` LIKE '%$pled, %'";

        $SQLString_1_exact = "SELECT * FROM `miopledari` WHERE `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR `A2` LIKE '$pled, %'";
        $SQLString_1_entschatta = "SELECT * FROM `miopledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%'";
        $SQLString_1_intern = "SELECT * FROM `miopledari` WHERE `A2` LIKE '%$pled%'";
        $SQLString_1_finiziun = "SELECT * FROM `miopledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %'";

        $SQLString_2_exact = "SELECT * FROM `miopledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %'";
        $SQLString_2_entschatta = "SELECT * FROM `miopledari` WHERE `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%'";
        $SQLString_2_intern = "SELECT * FROM `miopledari` WHERE `D2` LIKE '%$pled%'";
        $SQLString_2_finiziun = "SELECT * FROM `miopledari` WHERE `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %'";

        $SQLString_3_exact = "SELECT * FROM `miopledari` WHERE `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %'";
        $SQLString_3_entschatta = "SELECT * FROM `miopledari` WHERE `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%'";
        $SQLString_3_intern = "SELECT * FROM `miopledari` WHERE `E2` LIKE '%$pled%'";
        $SQLString_3_finiziun = "SELECT * FROM `miopledari` WHERE `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %'";

        $SQLString_4_exact = "SELECT * FROM `miopledari` WHERE `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %'";
        $SQLString_4_entschatta = "SELECT * FROM `miopledari` WHERE `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%'";
        $SQLString_4_intern = "SELECT * FROM `miopledari` WHERE `F2` LIKE '%$pled%'";
        $SQLString_4_finiziun = "SELECT * FROM `miopledari` WHERE `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %'";

        $SQLString_5_exact = "SELECT * FROM `miopledari` WHERE `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %'";
        $SQLString_5_entschatta = "SELECT * FROM `miopledari` WHERE `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%'";
        $SQLString_5_intern = "SELECT * FROM `miopledari` WHERE `G2` LIKE '%$pled%'";
        $SQLString_5_finiziun = "SELECT * FROM `miopledari` WHERE `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %'";

        $SQLString_6_exact = "SELECT * FROM `miopledari` WHERE `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %'";
        $SQLString_6_entschatta = "SELECT * FROM `miopledari` WHERE `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_6_intern = "SELECT * FROM `miopledari` WHERE `H2` LIKE '%$pled%'";
        $SQLString_6_finiziun = "SELECT * FROM `miopledari` WHERE `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_7_exact = "SELECT * FROM `miopledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %' OR `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %' OR `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %' OR `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %' OR `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %' OR `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR 
`A2` LIKE '$pled,%'";
        $SQLString_7_entschatta = "SELECT * FROM `miopledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%' OR `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%' OR `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%' OR `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%' OR `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%' OR `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_7_intern = "SELECT * FROM `miopledari` WHERE `A2` LIKE '%$pled%' OR `D2` LIKE '%$pled%' OR `E2` LIKE '%$pled%' OR `F2` LIKE '%$pled%' OR `G2` LIKE '%$pled%' OR `H2` LIKE '%$pled%'";
        $SQLString_7_finiziun = "SELECT * FROM `miopledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %' OR `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %' OR `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %' OR `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %' OR `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %' OR `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_8_exact = "SELECT * FROM `miopledari` WHERE `J2` LIKE '$pled'";
        $SQLString_8_entschatta = "SELECT * FROM `miopledari` WHERE `J2` LIKE '$pled%'";
        $SQLString_8_intern = "SELECT * FROM `miopledari` WHERE `J2` LIKE '%$pled%'";
        $SQLString_8_finiziun = "SELECT * FROM `miopledari` WHERE `J2` LIKE '%$pled'";

        $SQLString_9_exact = "SELECT * FROM `miopledari` WHERE `J1` LIKE '$pled'";
        $SQLString_9_entschatta = "SELECT * FROM `miopledari` WHERE `J1` LIKE '$pled%'";
        $SQLString_9_intern = "SELECT * FROM `miopledari` WHERE `J1` LIKE '%$pled%'";
        $SQLString_9_finiziun = "SELECT * FROM `miopledari` WHERE `J1` LIKE '%$pled'";

        $SQLString2 = @"SQLString_".@$direcziun."_".@$modus;
        return @$$SQLString2;
    }

    public static function generateFrQuery(string $pled, string $direcziun, string $modus): string {
        $SQLString_0_exact = "SELECT * FROM `monpledari` WHERE `B2` LIKE '$pled' OR `B2` LIKE '%, $pled' OR `B2` LIKE '%, $pled, %' OR `B2` LIKE '$pled, %'";
        $SQLString_0_entschatta = "SELECT * FROM `monpledari` WHERE `B2` LIKE '$pled%' OR `B2` LIKE '%, $pled%'";
        $SQLString_0_intern = "SELECT * FROM `monpledari` WHERE `B2` LIKE '%$pled%'";
        $SQLString_0_finiziun = "SELECT * FROM `monpledari` WHERE `B2` LIKE '%$pled' OR `B2` LIKE '%$pled, %'";

        $SQLString_1_exact = "SELECT * FROM `monpledari` WHERE `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR `A2` LIKE '$pled, %'";
        $SQLString_1_entschatta = "SELECT * FROM `monpledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%'";
        $SQLString_1_intern = "SELECT * FROM `monpledari` WHERE `A2` LIKE '%$pled%'";
        $SQLString_1_finiziun = "SELECT * FROM `monpledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %'";

        $SQLString_2_exact = "SELECT * FROM `monpledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %'";
        $SQLString_2_entschatta = "SELECT * FROM `monpledari` WHERE `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%'";
        $SQLString_2_intern = "SELECT * FROM `monpledari` WHERE `D2` LIKE '%$pled%'";
        $SQLString_2_finiziun = "SELECT * FROM `monpledari` WHERE `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %'";

        $SQLString_3_exact = "SELECT * FROM `monpledari` WHERE `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %'";
        $SQLString_3_entschatta = "SELECT * FROM `monpledari` WHERE `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%'";
        $SQLString_3_intern = "SELECT * FROM `monpledari` WHERE `E2` LIKE '%$pled%'";
        $SQLString_3_finiziun = "SELECT * FROM `monpledari` WHERE `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %'";

        $SQLString_4_exact = "SELECT * FROM `monpledari` WHERE `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %'";
        $SQLString_4_entschatta = "SELECT * FROM `monpledari` WHERE `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%'";
        $SQLString_4_intern = "SELECT * FROM `monpledari` WHERE `F2` LIKE '%$pled%'";
        $SQLString_4_finiziun = "SELECT * FROM `monpledari` WHERE `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %'";

        $SQLString_5_exact = "SELECT * FROM `monpledari` WHERE `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %'";
        $SQLString_5_entschatta = "SELECT * FROM `monpledari` WHERE `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%'";
        $SQLString_5_intern = "SELECT * FROM `monpledari` WHERE `G2` LIKE '%$pled%'";
        $SQLString_5_finiziun = "SELECT * FROM `monpledari` WHERE `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %'";

        $SQLString_6_exact = "SELECT * FROM `monpledari` WHERE `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %'";
        $SQLString_6_entschatta = "SELECT * FROM `monpledari` WHERE `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_6_intern = "SELECT * FROM `monpledari` WHERE `H2` LIKE '%$pled%'";
        $SQLString_6_finiziun = "SELECT * FROM `monpledari` WHERE `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_7_exact = "SELECT * FROM `monpledari` WHERE `D2` LIKE '$pled' OR `D2` LIKE '%, $pled' OR `D2` LIKE '%, $pled, %' OR `D2` LIKE '$pled, %' OR `E2` LIKE '$pled' OR `E2` LIKE '%, $pled' OR `E2` LIKE '%, $pled, %' OR `E2` LIKE '$pled, %' OR `F2` LIKE '$pled' OR `F2` LIKE '%, $pled' OR `F2` LIKE '%, $pled, %' OR `F2` LIKE '$pled, %' OR `G2` LIKE '$pled' OR `G2` LIKE '%, $pled' OR `G2` LIKE '%, $pled, %' OR `G2` LIKE '$pled, %' OR `H2` LIKE '$pled' OR `H2` LIKE '%, $pled' OR `H2` LIKE '%, $pled, %' OR `H2` LIKE '$pled, %' OR `A2` LIKE '$pled' OR `A2` LIKE '%, $pled' OR `A2` LIKE '%, $pled, %' OR 
`A2` LIKE '$pled,%'";
        $SQLString_7_entschatta = "SELECT * FROM `monpledari` WHERE `A2` LIKE '$pled%' OR `A2` LIKE '%, $pled%' OR `D2` LIKE '$pled%' OR `D2` LIKE '%, $pled%' OR `E2` LIKE '$pled%' OR `E2` LIKE '%, $pled%' OR `F2` LIKE '$pled%' OR `F2` LIKE '%, $pled%' OR `G2` LIKE '$pled%' OR `G2` LIKE '%, $pled%' OR `H2` LIKE '$pled%' OR `H2` LIKE '%, $pled%'";
        $SQLString_7_intern = "SELECT * FROM `monpledari` WHERE `A2` LIKE '%$pled%' OR `D2` LIKE '%$pled%' OR `E2` LIKE '%$pled%' OR `F2` LIKE '%$pled%' OR `G2` LIKE '%$pled%' OR `H2` LIKE '%$pled%'";
        $SQLString_7_finiziun = "SELECT * FROM `monpledari` WHERE `A2` LIKE '%$pled' OR `A2` LIKE '%$pled, %' OR `D2` LIKE '%$pled' OR `D2` LIKE '%$pled, %' OR `E2` LIKE '%$pled' OR `E2` LIKE '%$pled, %' OR `F2` LIKE '%$pled' OR `F2` LIKE '%$pled, %' OR `G2` LIKE '%$pled' OR `G2` LIKE '%$pled, %' OR `H2` LIKE '%$pled' OR `H2` LIKE '%$pled, %'";

        $SQLString_8_exact = "SELECT * FROM `monpledari` WHERE `J2` LIKE '$pled'";
        $SQLString_8_entschatta = "SELECT * FROM `monpledari` WHERE `J2` LIKE '$pled%'";
        $SQLString_8_intern = "SELECT * FROM `monpledari` WHERE `J2` LIKE '%$pled%'";
        $SQLString_8_finiziun = "SELECT * FROM `monpledari` WHERE `J2` LIKE '%$pled'";

        $SQLString_9_exact = "SELECT * FROM `monpledari` WHERE `J1` LIKE '$pled'";
        $SQLString_9_entschatta = "SELECT * FROM `monpledari` WHERE `J1` LIKE '$pled%'";
        $SQLString_9_intern = "SELECT * FROM `monpledari` WHERE `J1` LIKE '%$pled%'";
        $SQLString_9_finiziun = "SELECT * FROM `monpledari` WHERE `J1` LIKE '%$pled'";

        $SQLString2 = @"SQLString_".@$direcziun."_".@$modus;
        return @$$SQLString2;
    }
}
