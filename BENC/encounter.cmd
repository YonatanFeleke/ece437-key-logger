#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Apr 26 06:55:39 2011                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v09.11-s084_1 (32bit) 04/26/2010 12:41 (Linux 2.6)
#@(#)CDS: NanoRoute v09.11-s008 NR100226-1806/USR63-UB (database version 2.30, 93.1.1) {superthreading v1.14}
#@(#)CDS: CeltIC v09.11-s011_1 (32bit) 03/04/2010 09:23:40 (Linux 2.6.9-78.0.25.ELsmp)
#@(#)CDS: CTE 09.11-s016_1 (32bit) Apr  8 2010 03:34:50 (Linux 2.6.9-78.0.25.ELsmp)
#@(#)CDS: CPE v09.11-s023

loadConfig ./encounter.conf
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 50 50 50 50
addRing -spacing_bottom 9.9 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 9.9 -layer_bottom metal1 -width_right 9.9 -around core -center 1 -layer_top metal1 -spacing_right 9.9 -spacing_left 9.9 -layer_right metal2 -layer_left metal2 -offset_top 9.9 -offset_bottom 9.9 -offset_left 9.9 -offset_right 9.9 -nets { gnd vdd }
setPlaceMode -congEffort medium
placeDesign -inPlaceOpt
checkPlace
sroute -noBlockPins -noPadRings
trialRoute
timeDesign -preCTS
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -preCTS -drv
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute
timeDesign -postCTS
setExtractRCMode -default -assumeMetFill
extractRC -outfile encounter.cap
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -postCTS -hold
optDesign -postCTS -drv
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
addFiller -cell FILL
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -all -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -all -override
sroute
globalDetailRoute
setExtractRCMode -engine detail -reduce 0.0
extractRC
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
optDesign -postRoute -incr
addFiller -cell FILL -prefix FIL -fillBoundary
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
streamOut final.gds2 -mapFile gds2_encounter.map -outputMacros -stripes 1 -units 1000 -mode ALL
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 50 50 50 50
addRing -spacing_bottom 9.9 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 9.9 -layer_bottom metal1 -width_right 9.9 -around core -center 1 -layer_top metal1 -spacing_right 9.9 -spacing_left 9.9 -layer_right metal2 -layer_left metal2 -offset_top 9.9 -offset_bottom 9.9 -offset_left 9.9 -offset_right 9.9 -nets { gnd vdd }
setPlaceMode -congEffort medium
placeDesign -inPlaceOpt
checkPlace
sroute -noBlockPins -noPadRings
trialRoute
timeDesign -preCTS
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -preCTS -drv
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute
timeDesign -postCTS
setExtractRCMode -default -assumeMetFill
extractRC -outfile encounter.cap
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -postCTS -hold
optDesign -postCTS -drv
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
addFiller -cell FILL
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -all -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -all -override
sroute
globalDetailRoute
setExtractRCMode -engine detail -reduce 0.0
extractRC
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
optDesign -postRoute -incr
addFiller -cell FILL -prefix FIL -fillBoundary
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
streamOut final.gds2 -mapFile gds2_encounter.map -outputMacros -stripes 1 -units 1000 -mode ALL
setUIVar rda_Input ui_netlist mapped/BENC.v
setUIVar rda_Input ui_topcell BENC
commitConfig
windowSelect 0.034 0.072 0.019 0.095
setUIVar rda_Input ui_netlist mapped/BENC.v
setUIVar rda_Input ui_settop 0
setUIVar rda_Input ui_topcell BENC
commitConfig
windowSelect 0.013 0.086 0.101 0.017
windowSelect 0.043 0.004 -0.018 0.076
panCenter 0.349 0.054
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 50 50 50 50
addRing -spacing_bottom 9.9 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 9.9 -layer_bottom metal1 -width_right 9.9 -around core -center 1 -layer_top metal1 -spacing_right 9.9 -spacing_left 9.9 -layer_right metal2 -layer_left metal2 -offset_top 9.9 -offset_bottom 9.9 -offset_left 9.9 -offset_right 9.9 -nets { gnd vdd }
setPlaceMode -congEffort medium
placeDesign -inPlaceOpt
checkPlace
sroute -noBlockPins -noPadRings
trialRoute
timeDesign -preCTS
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -preCTS -drv
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute
timeDesign -postCTS
setExtractRCMode -default -assumeMetFill
extractRC -outfile encounter.cap
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -postCTS -hold
optDesign -postCTS -drv
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
addFiller -cell FILL
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -all -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -all -override
sroute
globalDetailRoute
setExtractRCMode -engine detail -reduce 0.0
extractRC
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
optDesign -postRoute -incr
addFiller -cell FILL -prefix FIL -fillBoundary
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
streamOut final.gds2 -mapFile gds2_encounter.map -outputMacros -stripes 1 -units 1000 -mode ALL
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 50 50 50 50
addRing -spacing_bottom 9.9 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 9.9 -layer_bottom metal1 -width_right 9.9 -around core -center 1 -layer_top metal1 -spacing_right 9.9 -spacing_left 9.9 -layer_right metal2 -layer_left metal2 -offset_top 9.9 -offset_bottom 9.9 -offset_left 9.9 -offset_right 9.9 -nets { gnd vdd }
setPlaceMode -congEffort medium
placeDesign -inPlaceOpt
checkPlace
sroute -noBlockPins -noPadRings
trialRoute
timeDesign -preCTS
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -preCTS -drv
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute
timeDesign -postCTS
setExtractRCMode -default -assumeMetFill
extractRC -outfile encounter.cap
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -postCTS -hold
optDesign -postCTS -drv
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
addFiller -cell FILL
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -all -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -all -override
sroute
globalDetailRoute
setExtractRCMode -engine detail -reduce 0.0
extractRC
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
optDesign -postRoute -incr
addFiller -cell FILL -prefix FIL -fillBoundary
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
streamOut final.gds2 -mapFile gds2_encounter.map -outputMacros -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcOut -spf final.dspf
loadConfig ./encounter.conf
floorPlan -r 1.0 0.6 50 50 50 50
addRing -spacing_bottom 9.9 -width_left 9.9 -width_bottom 9.9 -width_top 9.9 -spacing_top 9.9 -layer_bottom metal1 -width_right 9.9 -around core -center 1 -layer_top metal1 -spacing_right 9.9 -spacing_left 9.9 -layer_right metal2 -layer_left metal2 -offset_top 9.9 -offset_bottom 9.9 -offset_left 9.9 -offset_right 9.9 -nets { gnd vdd }
setPlaceMode -congEffort medium
placeDesign -inPlaceOpt
checkPlace
sroute -noBlockPins -noPadRings
trialRoute
timeDesign -preCTS
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -preCTS -drv
createClockTreeSpec -output encounter.cts
specifyClockTree -file encounter.cts
ckSynthesis -rguide cts.rguide -report report.ctsrpt -macromodel report.ctsmdl -fix_added_buffers
trialRoute
timeDesign -postCTS
setExtractRCMode -default -assumeMetFill
extractRC -outfile encounter.cap
setOptMode -yieldEffort none
setOptMode -highEffort
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -noSimplifyNetlist
optDesign -postCTS -hold
optDesign -postCTS -drv
reportClockTree -postRoute -localSkew -report skew.post_troute_local.ctsrpt
addFiller -cell FILL
globalNetConnect vdd -type tiehi
globalNetConnect vdd -type pgpin -pin vdd -all -override
globalNetConnect gnd -type tielo
globalNetConnect gnd -type pgpin -pin gnd -all -override
sroute
globalDetailRoute
setExtractRCMode -engine detail -reduce 0.0
extractRC
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -maxDensity 0.95
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.0 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
optDesign -postRoute -incr
addFiller -cell FILL -prefix FIL -fillBoundary
verifyConnectivity -type all -error 1000 -warning 50
verifyGeometry
streamOut final.gds2 -mapFile gds2_encounter.map -outputMacros -stripes 1 -units 1000 -mode ALL
saveNetlist -excludeLeafCell final.v
rcOut -spf final.dspf
