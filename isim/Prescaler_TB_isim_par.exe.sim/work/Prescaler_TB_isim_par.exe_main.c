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
    simprim_a_3221717806_2431929443_0311666291_init();
    simprim_a_3221717806_2431929443_0324127812_init();
    simprim_a_3221717806_2431929443_0371120833_init();
    simprim_a_3221717806_2431929443_2562598817_init();
    simprim_a_3221717806_2431929443_0282400810_init();
    simprim_a_3221717806_2431929443_2904975818_init();
    simprim_a_3221717806_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2942359443_init();
    simprim_a_2118406211_3300903326_3346948913_init();
    simprim_a_4130118134_1564065396_3225707534_init();
    simprim_a_4130118134_1564065396_3246788153_init();
    simprim_a_4130118134_1564065396_1246463787_init();
    simprim_a_4130118134_1564065396_1325699502_init();
    simprim_a_4130118134_1564065396_1321663385_init();
    simprim_a_4130118134_1564065396_1919203358_init();
    simprim_a_1192290204_2000130859_3225707534_init();
    simprim_a_1560603216_2000130859_3225707534_init();
    simprim_a_3900839465_2000130859_3246788153_init();
    simprim_a_3974130805_2000130859_3246788153_init();
    simprim_a_4037439991_2000130859_3246788153_init();
    simprim_a_2779380803_2000130859_3246788153_init();
    simprim_a_0483429214_2000130859_1246463787_init();
    simprim_a_3078914327_2000130859_1246463787_init();
    simprim_a_3534015212_2000130859_1246463787_init();
    simprim_a_2570652150_2000130859_1246463787_init();
    simprim_a_0135831290_2000130859_1325699502_init();
    simprim_a_0947648328_2000130859_1325699502_init();
    simprim_a_3709659121_2000130859_1325699502_init();
    simprim_a_3710566985_2000130859_1325699502_init();
    simprim_a_2056261602_2000130859_1321663385_init();
    simprim_a_3042155318_2000130859_1321663385_init();
    simprim_a_3996728185_2000130859_1321663385_init();
    simprim_a_1670777727_2000130859_1321663385_init();
    simprim_a_4230595628_2000130859_1999351451_init();
    simprim_a_3966271563_2000130859_1919203358_init();
    simprim_a_0864298209_2000130859_1919203358_init();
    simprim_a_3918773738_2000130859_1919203358_init();
    simprim_a_3669099575_2000130859_1919203358_init();
    simprim_a_3936907874_4055128042_3246788153_init();
    simprim_a_3936907874_4055128042_1246463787_init();
    simprim_a_3936907874_4055128042_1321663385_init();
    simprim_a_1314445507_1970351474_1246463787_init();
    simprim_a_3447666595_1970351474_1919203358_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0178122597_0632001823_init();
    work_a_1788247402_2372691052_init();


    xsi_register_tops("work_a_1788247402_2372691052");

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
