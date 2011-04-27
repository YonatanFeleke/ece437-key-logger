-- VHDL Entity My_lib.B_TopLevelTop.symbol
--
-- Created:
--          by - mg31.bin (ecelinux25.ecn.purdue.edu)
--          at - 03:34:47 04/26/11
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2009.2 (Build 10)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY B_TopLevel IS
   PORT( 
      CLK        : IN     std_logic;
      DATA       : IN     std_logic_vector (7 DOWNTO 0);
      EMPTY      : IN     std_logic;
      R_ENABLE   : IN     std_logic;
      RST        : IN     std_logic;
      DATAOUT    : OUT    std_logic_vector ( 7 DOWNTO 0);
      EMPTY_SRAM : OUT    std_logic;
      READ_EN    : OUT    std_logic;
      RESEND_EN  : OUT    std_logic
   );

-- Declarations

END B_TopLevel ;

--
-- VHDL Architecture My_lib.B_TopLevelTop.struct
--
-- Created:
--          by - mg31.bin (ecelinux25.ecn.purdue.edu)
--          at - 03:34:47 04/26/11
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2009.2 (Build 10)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--LIBRARY My_lib;

ARCHITECTURE struct OF B_TopLevel IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ACESS_CODE : std_logic_vector(71 DOWNTO 0);
   SIGNAL ANT_INR     : std_logic;
   SIGNAL DATAOUT1   : std_logic;
   SIGNAL ENCODE_EN  : std_logic;
   SIGNAL ERR        : std_logic;
   SIGNAL ESTORE_EN  : std_logic;
   SIGNAL HEADER     : std_logic_vector(53 DOWNTO 0);
   SIGNAL HEADER_EN  : std_logic;
   SIGNAL NEXT_EN    : std_logic;
   SIGNAL PAYLOAD    : std_logic_vector(7 DOWNTO 0);
   SIGNAL REPLY_EN   : std_logic;
   SIGNAL TRANS_EN   : std_logic;
   SIGNAL BLUE_EN  : std_logic;


   -- Component Declarations
   COMPONENT B_AppendAccessCode
   PORT (
      CLK        : IN     std_logic;
      RST        : IN     std_logic;
      BLUE_EN   : IN     std_logic;
      ACESS_CODE : OUT    std_logic_vector (71 DOWNTO 0);
      HEADER_EN  : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_Controller
   GENERIC (
      WAITSRAM  : natural := 10;        -- wait for 10>8 cycles before data is present
      WAITREG   : natural := 5264;      -- Transmit wait time. FIX THIS for LAG
      WAITBAK   : natural := 4869 -- back transmit 57.6 kb/s or 4869 cycles/bit
   );
   PORT (
      ANT_LIN   : IN     std_logic;
      CLK       : IN     std_logic;
      EMPTY     : IN     std_logic;
      NEXT_EN   : IN     std_logic;
      RST       : IN     std_logic;
      RESEND_EN : OUT    std_logic;
      BLUE_EN  : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_EncodePacket
   GENERIC (
      STROBCYC : natural := 15;      -- MUST NOT EXCEED WAITREG!!!!!!!!
      WAITSRAM : natural := 10;      -- wait for 10 cycles before data is present after strobe??
      -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en strobcyc clks Strobe
      WAITREG  : natural := 5264
   );
   PORT (
      CLK       : IN     std_logic;
      DATA      : IN     std_logic_vector (7 DOWNTO 0);
      ENCODE_EN : IN     std_logic;
      RST       : IN     std_logic;
      ESTORE_EN : OUT    std_logic;
      NEXT_EN   : OUT    std_logic;
      PAYLOAD   : OUT    std_logic_vector (7 DOWNTO 0);
      READ_EN   : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_Header
   GENERIC (
      WAITREG : natural := 5264
   );
   PORT (
      CLK       : IN     std_logic;
      HEADER_EN : IN     std_logic;
      RST       : IN     std_logic;
      ENCODE_EN : OUT    std_logic;
      HEADER    : OUT    std_logic_vector (53 DOWNTO 0);
      TRANS_EN  : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_NextPacket
   GENERIC (
      WAITSRAM : natural := 10;        -- wait for 10 cycles before data is present
      WAITREG  : natural := 5264;      -- Transmit wait time. FIX THIS for LAG
      WAITBAK  : natural := 4869
   );
   PORT (
      CLK      : IN     std_logic;
      ERR      : IN     std_logic;
      REPLY_EN : IN     std_logic;
      RST      : IN     std_logic;
      ANT_ROUT  : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_StripPayload
   GENERIC (
      WAITSRAM 	: natural := 10;      -- wait for 10 cycles before data is present
      WAITBIT		:	natural := 658;
      WAITREG  : natural := 5264
   );
   PORT (
      ANT_INR    : IN     std_logic;
      CLK        : IN     std_logic;
      R_ENABLE   : IN     std_logic;
      RST        : IN     std_logic;
      DATAOUT    : OUT    std_logic_vector ( 7 DOWNTO 0);
      EMPTY_SRAM : OUT    std_logic;
      ERR        : OUT    std_logic;
      REPLY_EN   : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT B_UAT
   GENERIC (
      WAITSRAM : natural := 10;      -- wait for 10 >8 cycles before data is present after strobe
      WAITREG  : natural := 5264
   );
   PORT (
      ACCESS_CODE : IN     std_logic_vector (71 DOWNTO 0);
      CLK         : IN     std_logic;
      ESTORE_EN   : IN     std_logic;
      HEADER      : IN     std_logic_vector (53 DOWNTO 0);
      PAYLOAD     : IN     std_logic_vector (7 DOWNTO 0);
      RST         : IN     std_logic;
      TRANS_EN     : IN     std_logic;
      ANT_LOUT    : OUT    std_logic
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
  -- FOR ALL : B_AppendAccessCode USE ENTITY My_lib.B_AppendAccessCode;
  -- FOR ALL : B_Controller USE ENTITY My_lib.B_Controller;
  --- FOR ALL : B_EncodePacket USE ENTITY My_lib.B_EncodePacket;
  -- FOR ALL : B_Header USE ENTITY My_lib.B_Header;
   --FOR ALL : B_NextPacket USE ENTITY My_lib.B_NextPacket;
  -- FOR ALL : B_StripPayload USE ENTITY My_lib.B_StripPayload;
  -- FOR ALL : B_UAT USE ENTITY My_lib.B_UAT;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   Acode : B_AppendAccessCode
      PORT MAP (
         CLK        => CLK,
         RST        => RST,
         BLUE_EN   => BLUE_EN,
         ACESS_CODE => ACESS_CODE,
         HEADER_EN  => HEADER_EN
      );
   cont : B_Controller
      GENERIC MAP (
         WAITSRAM => 10,           -- wait for 10 cycles before data is present
         WAITREG  => 5264,         -- Transmit wait time. FIX THIS for LAG         
         WAITBAK  => 4869					 --	WAITBAK	: natural := 4869; -- back transmit 57.6 kb/s or 4869 cycles/bit
      )
      PORT MAP (
         CLK       => CLK,
         RST       => RST,
         NEXT_EN   => NEXT_EN,
         ANT_LIN   => DATAOUT1,
         EMPTY     => EMPTY,
         RESEND_EN => RESEND_EN,
         BLUE_EN  => BLUE_EN
      );
   encode : B_EncodePacket
      GENERIC MAP (
         STROBCYC => 15,         -- MUST NOT EXCEED WAITREG!!!!!!!!
         WAITSRAM => 10,         -- wait for 10 cycles before data is present after strobe??
         -- wait for 5264 cycles before 8 bit data is transmitted after nestore_en strobcyc clks Strobe
         WAITREG  => 5264
      )
      PORT MAP (
         CLK       => CLK,
         RST       => RST,
         ENCODE_EN => ENCODE_EN,
         DATA      => DATA,
         PAYLOAD   => PAYLOAD,
         ESTORE_EN => ESTORE_EN,
         NEXT_EN   => NEXT_EN,
         READ_EN   => READ_EN
      );
   hdr : B_Header
      GENERIC MAP (
         WAITREG => 5264
      )
      PORT MAP (
         CLK       => CLK,
         RST       => RST,
         HEADER_EN => HEADER_EN,
         HEADER    => HEADER,
         TRANS_EN  => TRANS_EN,
         ENCODE_EN => ENCODE_EN
      );
   nxtpkt : B_NextPacket
      GENERIC MAP (
         WAITSRAM => 10,           -- wait for 10 > 8 cycles before data is present
         WAITREG  => 5264,         -- Transmit wait time. FIX THIS for LAG
         WAITBAK  => 4869
      )
      PORT MAP (
         CLK      => CLK,
         RST      => RST,
         REPLY_EN => REPLY_EN,
         ERR      => ERR,
         ANT_ROUT  => DATAOUT1
      );
   strp : B_StripPayload
      GENERIC MAP (
         WAITSRAM => 10,         -- wait for 10 cycles before data is present
         WAITREG  => 5264,
         WAITBIT	=> 658
      )
      PORT MAP (
         CLK        => CLK,
         RST        => RST,
         ANT_INR     => ANT_INR,
         R_ENABLE    => R_ENABLE,
         EMPTY_SRAM => EMPTY_SRAM,
         REPLY_EN   => REPLY_EN,
         ERR        => ERR,
         DATAOUT    => DATAOUT
      );
   uat : B_UAT
      GENERIC MAP (
         WAITSRAM => 10,         -- wait for 10 > 8 cycles before data is present after strobe??
         WAITREG  => 5264
      )
      PORT MAP (
         CLK         => CLK,
         RST         => RST,
         ACCESS_CODE => ACESS_CODE,
         HEADER      => HEADER,
         PAYLOAD     => PAYLOAD,
         TRANS_EN     => TRANS_EN,
         ESTORE_EN   => ESTORE_EN,
         ANT_LOUT    => ANT_INR
      );

END struct;
