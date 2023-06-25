/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_3221717806_2431929443_2562598817_init();
    simprim_a_3221717806_2431929443_2365726867_init();
    simprim_a_3221717806_2431929443_2275151257_init();
    simprim_a_3221717806_2431929443_2361412260_init();
    simprim_a_3221717806_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2345263736_init();
    simprim_a_3156740924_4150518722_2391209213_init();
    simprim_a_3156740924_4150518722_0537018564_init();
    simprim_a_3156740924_4150518722_1054998731_init();
    simprim_a_3156740924_4150518722_0596022442_init();
    simprim_a_3156740924_4150518722_0574946973_init();
    simprim_a_3156740924_4150518722_0286749213_init();
    simprim_a_3156740924_4150518722_0282400810_init();
    simprim_a_3156740924_4150518722_2286761494_init();
    simprim_a_3156740924_4150518722_0441136416_init();
    simprim_a_3156740924_4150518722_0311666291_init();
    simprim_a_3156740924_4150518722_0324127812_init();
    simprim_a_3156740924_4150518722_2904975818_init();
    simprim_a_3156740924_4150518722_2942359443_init();
    simprim_a_3156740924_4150518722_0371120833_init();
    simprim_a_3156740924_4150518722_2316011599_init();
    simprim_a_2118406211_3300903326_3346948913_init();
    simprim_a_3066245300_2000130859_2992415805_init();
    simprim_a_3645029227_2000130859_2992415805_init();
    simprim_a_2626447869_2000130859_2992415805_init();
    simprim_a_2864763807_2000130859_2992415805_init();
    simprim_a_3066245300_2000130859_2152632056_init();
    simprim_a_2916226674_2000130859_2152632056_init();
    simprim_a_0568929766_2000130859_2152632056_init();
    simprim_a_1571920621_2000130859_2152632056_init();
    simprim_a_3131758846_2000130859_2173494479_init();
    simprim_a_2247705960_2000130859_2173494479_init();
    simprim_a_1065758467_2000130859_2173494479_init();
    simprim_a_0135831290_2000130859_2173494479_init();
    simprim_a_2916226674_2000130859_2211076758_init();
    simprim_a_3460762807_2000130859_2211076758_init();
    simprim_a_2541067431_2000130859_2211076758_init();
    simprim_a_0135806246_2000130859_2211076758_init();
    simprim_a_2557719083_2000130859_1255159658_init();
    simprim_a_0663427369_2000130859_1255159658_init();
    simprim_a_1960518121_2000130859_1255159658_init();
    simprim_a_3214638431_2000130859_1255159658_init();
    simprim_a_0948011402_2000130859_1217825075_init();
    simprim_a_2128700403_2000130859_1217825075_init();
    simprim_a_0438028635_2000130859_1217825075_init();
    simprim_a_0610726601_2000130859_1217825075_init();
    simprim_a_4130118134_1564065396_2992415805_init();
    simprim_a_4130118134_1564065396_2152632056_init();
    simprim_a_4130118134_1564065396_2173494479_init();
    simprim_a_4130118134_1564065396_2211076758_init();
    simprim_a_4130118134_1564065396_1255159658_init();
    simprim_a_4130118134_1564065396_1217825075_init();
    simprim_a_1802107364_1970351474_1255159658_init();
    simprim_a_1435338860_1970351474_1255159658_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_4000226436_0632001823_init();
    work_a_0508150645_2372691052_init();


    xsi_register_tops("work_a_0508150645_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
