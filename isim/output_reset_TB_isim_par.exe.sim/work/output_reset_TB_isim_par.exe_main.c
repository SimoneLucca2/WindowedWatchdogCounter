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
    simprim_a_3221717806_2431929443_0311666291_init();
    simprim_a_3221717806_2431929443_0324127812_init();
    simprim_a_3221717806_2431929443_2942359443_init();
    simprim_a_3221717806_2431929443_0371120833_init();
    simprim_a_3221717806_2431929443_0282400810_init();
    simprim_a_3221717806_2431929443_0433961640_init();
    simprim_a_3156740924_4150518722_2904975818_init();
    simprim_a_2118406211_3300903326_3346948913_init();
    simprim_a_4130118134_1564065396_4197311842_init();
    simprim_a_2383966870_2000130859_4197311842_init();
    simprim_a_1780456287_2000130859_4197311842_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_0539773529_0632001823_init();
    work_a_0788843236_2372691052_init();


    xsi_register_tops("work_a_0788843236_2372691052");

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
