library IEEE;
use IEEE.std_logic_1164.all;  -- defines std_logic types
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Copyright (C) 2007, Peter C. Wallace, Mesa Electronics
-- http://www.mesanet.com
--
-- This program is is licensed under a disjunctive dual license giving you
-- the choice of one of the two following sets of free software/open source
-- licensing terms:
--
--    * GNU General Public License (GPL), version 2.0 or later
--    * 3-clause BSD License
-- 
--
-- The GNU GPL License:
-- 
--     This program is free software; you can redistribute it and/or modify
--     it under the terms of the GNU General Public License as published by
--     the Free Software Foundation; either version 2 of the License, or
--     (at your option) any later version.
-- 
--     This program is distributed in the hope that it will be useful,
--     but WITHOUT ANY WARRANTY; without even the implied warranty of
--     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--     GNU General Public License for more details.
-- 
--     You should have received a copy of the GNU General Public License
--     along with this program; if not, write to the Free Software
--     Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
-- 
-- 
-- The 3-clause BSD License:
-- 
--     Redistribution and use in source and binary forms, with or without
--     modification, are permitted provided that the following conditions
--     are met:
-- 
--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
-- 
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials
--     provided with the distribution.
-- 
--   * Neither the name of Mesa Electronics nor the names of its
--     contributors may be used to endorse or promote products
--     derived from this software without specific prior written
--     permission.
-- 
-- 
-- Disclaimer:
-- 
--     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--     "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--     COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--     INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--     CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--     ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--     POSSIBILITY OF SUCH DAMAGE.
-- 

use work.IDROMConst.all;

package PIN_7I89x2_34 is
	constant ModuleID : ModuleIDType :=( 
		(WatchDogTag,	x"00",	ClockLowTag,	x"01",	WatchDogTimeAddr&PadT,		WatchDogNumRegs,		x"00",	WatchDogMPBitMask),
		(IOPortTag,		x"00",	ClockLowTag,	x"02",	PortAddr&PadT,					IOPortNumRegs,			x"00",	IOPortMPBitMask),
		(MuxedQcountTag,		MQCRev,	ClockLowTag,	x"10",	MuxedQcounterAddr&PadT,		MuxedQCounterNumRegs,x"00",	MuxedQCounterMPBitMask),
		(MuxedQCountSelTag,	x"00",	ClockLowTag,	x"01",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(SSerialTag,	x"00",	ClockLowTag,	x"01",	SSerialCommandAddr&PadT,	SSerialNumRegs,		x"10",	SSerialMPBitMask),
		(LEDTag,			x"00",	ClockLowTag,	x"01",	LEDAddr&PadT,					LEDNumRegs,				x"00",	LEDMPBitMask),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000")
		);
		
	
	constant PinDesc : PinDescType :=(
-- 	Base func  sec unit sec func 	 sec pin								-- 	P3 	DB25
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 00	PIN 1
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 01	PIN 14
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 02	PIN 2
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 03	PIN 15
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 04	PIN 3
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 05	PIN 16
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 06	PIN 4
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 07	PIN 17
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 08	PIN 5
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 09	PIN 6
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 10	PIN 7
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 11	PIN 8
		IOPortTag & x"00" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 12	PIN 9
		IOPortTag & x"00" & NullTag & NullPin,	 	   					-- I/O 13	PIN 10  POWOP
		IOPortTag & x"00" & SSerialTag & SSerialRX0Pin, 				-- I/O 14	PIN 11
		IOPortTag & x"00" & SSerialTag & SSerialTX0Pin, 				-- I/O 15	PIN 12
		IOPortTag & x"00" & SSerialTag & SSerialTXEN0Pin, 				-- I/O 16	PIN 13

																						--		P2		DB25		26 HDR
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 00	PIN 1		1	
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 01	PIN 14	2
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 02	PIN 2		3
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 03	PIN 15	4
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 04	PIN 3		5
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 05	PIN 16	6
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 06	PIN 4		7
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 07	PIN 17	8
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 08	PIN 5		9
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 09	PIN 6		10
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 10	PIN 7		11
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 11	PIN 8		12
		IOPortTag & x"08" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 12	PIN 9		13
		IOPortTag & x"00" & NullTag & NullPin,	 	   					-- I/O 13	PIN 10  	14 POWOP
		IOPortTag & x"00" & SSerialTag & SSerialRX1Pin, 				-- I/O 14	PIN 11	15
		IOPortTag & x"00" & SSerialTag & SSerialTX1Pin, 				-- I/O 15	PIN 12	16
		IOPortTag & x"00" & SSerialTag & SSerialTXEN1Pin, 				-- I/O 16	PIN 13	17

		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for 34 pin 5I25
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,


		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
					
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);

end package PIN_7I89x2_34;
