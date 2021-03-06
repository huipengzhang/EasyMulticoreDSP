/*!
 * File generated by platform wizard. DO NOT MODIFY
 *
 */

metaonly module Platform inherits xdc.platform.IPlatform {

    config ti.platforms.generic.Platform.Instance CPU =
        ti.platforms.generic.Platform.create("CPU", {
            clockRate:      1000,                                       
            catalogName:    "ti.catalog.c6000",
            deviceName:     "TMS320C6678",
            customMemoryMap:
           [          
                ["L2SRAM", 
                     {
                        base: 0x00800000,                    
                        space: "code/data",
                        name: "L2SRAM",
                        len: 0x00026000,                    
                        access: "RWX",
                     }
                ],
                ["MSMCSRAM", 
                     {
                        base: 0x0c000000,                    
                        space: "code/data",
                        name: "MSMCSRAM",
                        len: 0x00200000,                    
                        access: "RWX",
                     }
                ],
                ["DDR", 
                     {
                        base: 0x80000000,                    
                        space: "code/data",
                        name: "DDR",
                        len: 0x00200000,                    
                        access: "RWX",
                     }
                ],
                ["DDR_1", 
                     {
                        base: 0x80200000,                    
                        space: "code/data",
                        name: "DDR_1",
                        len: 0x04000000,                    
                        access: "RWX",
                     }
                ],
                ["MSMCSRAM_1", 
                     {
                        base: 0x0c200000,                    
                        space: "code/data",
                        name: "MSMCSRAM_1",
                        len: 0x00100000,                    
                        access: "RWX",
                     }
                ],
                ["MSMCSRAM_2", 
                     {
                        base: 0x0c300000,                    
                        space: "code/data",
                        name: "MSMCSRAM_2",
                        len: 0x00100000,                    
                        access: "RWX",
                     }
                ],
                ["L2SRAM_1", 
                     {
                        base: 0x00826000,                    
                        space: "code/data",
                        name: "L2SRAM_1",
                        len: 0x0005a000,                    
                        access: "RWX",
                     }
                ],
           ],
          l1DMode:"32k",
          l1PMode:"32k",
          l2Mode:"0k",

    });
    
instance :
    
    override config string codeMemory  = "MSMCSRAM_1";   
    override config string dataMemory  = "L2SRAM";                                
    override config string stackMemory = "L2SRAM";
    
}
