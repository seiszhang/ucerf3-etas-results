# ETAS Configuration for ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface

|   | ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface |
|-----|-----|
| Num Simulations | 100000 |
| Start Time | 2019/08/03 03:19:54 UTC |
| Start Time Epoch Milliseconds | 1564802394040 |
| Duration | 10 Years |
| Includes Spontaneous? | false |
| Trigger Ruptures | 1989 Trigger Ruptures |
|   | First: M3.98 at 2019/07/04 17:02:55 UTC |
|   | Last: M2.67 at 2019/08/03 01:01:23 UTC |
|   | Largest: M7.1 at 2019/07/06 03:19:53 UTC |
| Historical Ruptures | *(none)* |
| Config Generated With | u3etas_comcat_event_config_builder.sh --event-id ci38457511 --num-simulations 100000 --days-before 7 --days-after 28 --mag-complete 3.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 5 --kml-surf /home/kevin/OpenSHA/UCERF3/etas/ridgecrest_plots/ridgecrest.kmz --kml-surf-lower-depth 12 --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec |

## Table Of Contents

* [Trigger Rupture Fault Map](#trigger-rupture-fault-map)
* [Trigger Rupture Depth Map](#trigger-rupture-depth-map)
* [Fault Distances To Triggers](#fault-distances-to-triggers)
* [Possible Finite Rupture Subsection Mappings](#possible-finite-rupture-subsection-mappings)
* [JSON Input File](#json-input-file)

## Trigger Rupture Fault Map
*[(top)](#table-of-contents)*

![Map](./trigger_rup_fault_map.png)
## Trigger Rupture Depth Map
*[(top)](#table-of-contents)*

![Map](./trigger_rup_depth_map.png)
## Fault Distances To Triggers
*[(top)](#table-of-contents)*

| Section Name | Strike, Dip, Rake | # Hypos In Poly | Max Mag w/ Hypo In Poly | # Surfs In Poly | Max Mag w/ Surf In Poly | Min Dist To Any (km) | Min Poly Dist To Any (km) | Min Dist To Largest (km) | Min Poly Dist To Largest (km) | Min Hypo Dist To Largest (km) | Min Hypo Poly Dist To Largest (km) |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Airport Lake | 359, 50, -90 | 1076 | 7.1 | 1076 | 7.1 | 0.108 | 0.000 | 0.108 | 0.000 | 5.612 | 0.000 |
| Little Lake | 327, 90, 180 | 348 | 5.5 | 349 | 7.1 | 0.187 | 0.000 | 0.187 | 0.000 | 13.471 | 1.469 |
| Garlock (Central) | 71, 90, 0 | 147 | 4.73 | 148 | 7.1 | 0.225 | 0.000 | 4.496 | 0.000 | 22.766 | 10.797 |
| So Sierra Nevada | 2, 50, -90 | 110 | 4.62 | 110 | 4.62 | 1.097 | 0.000 | 2.006 | 1.025 | 16.191 | 15.188 |
| Ash Hill | 162, 90, 180 | 24 | 3.57 | 24 | 3.57 | 0.088 | 0.000 | 33.561 | 21.600 | 35.690 | 25.242 |
| Panamint Valley | 334, 90, -150 | 17 | 3.57 | 17 | 3.57 | 6.249 | 0.000 | 28.960 | 17.026 | 34.350 | 22.425 |
| Blackwater | 323, 90, 180 | 2 | 3.54 | 2 | 3.54 | 5.396 | 0.000 | 12.517 | 7.767 | 29.622 | 27.613 |
| Tank Canyon | 189, 50, -90 | 1 | 3.0 | 1 | 3.0 | 1.252 | 0.000 | 8.074 | 8.068 | 17.039 | 16.895 |
| Sierra Nevada  (No Extension) | 344, 50, -90 | 0 |  | 0 |  | 5.696 | 1.331 | 39.260 | 39.217 | 58.680 | 58.391 |
| Owens Valley | 346, 90, 180 | 0 |  | 0 |  | 13.143 | 7.068 | 49.023 | 47.970 | 68.299 | 66.819 |
| Lenwood-Lockhart-Old Woman Springs | 302, 90, 180 | 0 |  | 0 |  | 18.221 | 16.222 | 42.034 | 30.819 | 59.786 | 48.595 |
| Towne Pass | 195, 50, -90 | 0 |  | 0 |  | 18.237 | 18.158 | 48.483 | 48.471 | 59.662 | 59.451 |
| Garlock (West) | 56, 90, 0 | 0 |  | 0 |  | 18.439 | 18.373 | 49.038 | 46.326 | 66.575 | 62.627 |
| Scodie Lineament | 221, 68, 0 | 0 |  | 0 |  | 20.820 | 19.945 | 25.947 | 21.338 | 36.559 | 32.668 |
| Gravel Hills-Harper Lk | 311, 90, 180 | 0 |  | 0 |  | 23.045 | 11.043 | 34.306 | 24.987 | 50.134 | 42.769 |

## Possible Finite Rupture Subsection Mappings
*[(top)](#table-of-contents)*

This gives any possible finite rupture surface subsection mappings. In the plot below, potentially suggested subsections are outlined in green, and all subsections for which any of this rupture is within the fault polygon are in gray. Suggested sections are those for which the area of the input rupture within the polygon is at least 50.0 % of the sub section area

Overlapping polygons are removed according to the mean distance of the actual subsection surface, with the polygons of closer sections masking out the polygons of further sections

![Map](./finite_rup_subsection_mappings.png)

| Section Index | Section Name | Suggested Match? | Section Area | Rup Area in Raw Poly | Rup Area in No-Overlap Poly | Area Fraction | Sect Distance To Rup | Hypocenter in Polygon? |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 0 | Airport Lake, Subsection 0 | *yes* | 120.19 | 670.86 | 565.89 | 4.71 | mean=3.31 [0.29 7.83] [km] | *yes* |
| 1 | Airport Lake, Subsection 1 | *yes* | 120.19 | 166.25 | 166.25 | 1.38 | mean=2.11 [0.21 6.07] [km] | no |
| 2 | Airport Lake, Subsection 2 | *yes* | 120.19 | 156.94 | 156.94 | 1.31 | mean=2.21 [0.13 6.23] [km] | no |
| 602 | Garlock (Central), Subsection 8 | no | 61.94 | 27.48 | 27.48 | 0.44 | mean=9.21 [8.85 9.99] [km] | no |
| 603 | Garlock (Central), Subsection 9 | *yes* | 61.94 | 102.4 | 102.4 | 1.65 | mean=9.09 [8.22 9.67] [km] | no |
| 604 | Garlock (Central), Subsection 10 | no | 61.94 | 27.36 | 27.36 | 0.44 | mean=6.98 [5.55 8.5] [km] | no |
| 605 | Garlock (Central), Subsection 11 | *yes* | 61.94 | 307.05 | 307.05 | 4.96 | mean=4.93 [4.52 5.79] [km] | no |
| 606 | Garlock (Central), Subsection 12 | *yes* | 61.94 | 60.03 | 60.03 | 0.97 | mean=5.63 [4.51 7.4] [km] | no |
| 1126 | Little Lake, Subsection 1 | *yes* | 73.13 | 36.74 | 36.74 | 0.5 | mean=1.06 [0.39 2.58] [km] | no |
| 1127 | Little Lake, Subsection 2 | *yes* | 73.13 | 85.95 | 85.95 | 1.18 | mean=2.14 [0.73 4.58] [km] | no |
| 1129 | Little Lake, Subsection 4 | no | 73.13 | 2.82 | 0 | 0 | mean=9.05 [8.82 9.53] [km] | no |

## JSON Input File
*[(top)](#table-of-contents)*

```
{
  "numSimulations": 100000,
  "duration": 10.0,
  "startTimeMillis": 1564802394040,
  "includeSpontaneous": false,
  "randomSeed": 1568835402671,
  "binaryOutput": true,
  "binaryOutputFilters": [
    {
      "prefix": "results_complete",
      "descendantsOnly": false
    },
    {
      "prefix": "results_m5_preserve_chain",
      "minMag": 5.0,
      "preserveChainBelowMag": true,
      "descendantsOnly": false
    }
  ],
  "forceRecalc": false,
  "simulationName": "ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface",
  "numRetries": 3,
  "outputDir": "${ETAS_SIM_DIR}/2019_09_18-ComCatM7p1_ci38457511_28DaysAfter_KMLSurface_ShakeMapSurface",
  "triggerRuptures": [
    "omitted due to length, see original input file"
  ],
  "cacheDir": "${ETAS_LAUNCHER}/inputs/cache_fm3p1_ba",
  "fssFile": "${ETAS_LAUNCHER}/inputs/2013_05_10-ucerf3p3-production-10runs_COMPOUND_SOL_FM3_1_SpatSeisU3_MEAN_BRANCH_AVG_SOL.zip",
  "probModel": "FULL_TD",
  "applySubSeisForSupraNucl": true,
  "totRateScaleFactor": 1.14,
  "gridSeisCorr": true,
  "timeIndependentERF": false,
  "griddedOnly": false,
  "imposeGR": false,
  "includeIndirectTriggering": true,
  "gridSeisDiscr": 0.1,
  "catalogCompletenessModel": "RELAXED",
  "configCommand": "u3etas_comcat_event_config_builder.sh --event-id ci38457511 --num-simulations 100000 --days-before 7 --days-after 28 --mag-complete 3.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 5 --kml-surf /home/kevin/OpenSHA/UCERF3/etas/ridgecrest_plots/ridgecrest.kmz --kml-surf-lower-depth 12 --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec",
  "configTime": 1568835402671,
  "comcatMetadata": {
    "region": {
      "border": [
        {
          "latitude": 35.13342762012634,
          "longitude": -117.45367750070501
        },
        {
          "latitude": 35.15270332909477,
          "longitude": -117.54213523429682
        },
        {
          "latitude": 35.184187907213456,
          "longitude": -117.62521508013079
        },
        {
          "latitude": 35.22693822000033,
          "longitude": -117.70042094108739
        },
        {
          "latitude": 35.27967195814059,
          "longitude": -117.76548311116092
        },
        {
          "latitude": 35.28292136541374,
          "longitude": -117.768297169107
        },
        {
          "latitude": 35.282714022786564,
          "longitude": -117.76860667734388
        },
        {
          "latitude": 35.64616476778597,
          "longitude": -118.14060116871636
        },
        {
          "latitude": 35.646290565151034,
          "longitude": -118.14041397296377
        },
        {
          "latitude": 35.646290565151034,
          "longitude": -118.14041397296374
        },
        {
          "latitude": 35.70550198289052,
          "longitude": -118.1919320615959
        },
        {
          "latitude": 35.77319089074291,
          "longitude": -118.23131566123934
        },
        {
          "latitude": 35.84539594526493,
          "longitude": -118.25567060785616
        },
        {
          "latitude": 35.919932588574866,
          "longitude": -118.26421849104048
        },
        {
          "latitude": 35.99453954092851,
          "longitude": -118.25665541220314
        },
        {
          "latitude": 36.066947044143845,
          "longitude": -118.23316650649775
        },
        {
          "latitude": 36.13494612677531,
          "longitude": -118.19442573686128
        },
        {
          "latitude": 36.19645676261368,
          "longitude": -118.14158030503249
        },
        {
          "latitude": 36.24959273547327,
          "longitude": -118.07621953817277
        },
        {
          "latitude": 36.29272104246196,
          "longitude": -118.00032870851776
        },
        {
          "latitude": 36.32451377564722,
          "longitude": -117.91622889704182
        },
        {
          "latitude": 36.343990623811074,
          "longitude": -117.826504677543
        },
        {
          "latitude": 36.35055043060519,
          "longitude": -117.733922023183
        },
        {
          "latitude": 36.343990623811074,
          "longitude": -117.64133936882301
        },
        {
          "latitude": 36.32451377564722,
          "longitude": -117.55161514932418
        },
        {
          "latitude": 36.29272104246196,
          "longitude": -117.46751533784825
        },
        {
          "latitude": 36.24959273547327,
          "longitude": -117.39162450819323
        },
        {
          "latitude": 36.19645676261368,
          "longitude": -117.32626374133352
        },
        {
          "latitude": 36.19452355462307,
          "longitude": -117.32460287066154
        },
        {
          "latitude": 36.194651318425976,
          "longitude": -117.32441274870448
        },
        {
          "latitude": 35.828694033707926,
          "longitude": -116.95360151966321
        },
        {
          "latitude": 35.82848350243037,
          "longitude": -116.95391578771998
        },
        {
          "latitude": 35.770248906600905,
          "longitude": -116.9041092646137
        },
        {
          "latitude": 35.702251879941855,
          "longitude": -116.86554120692988
        },
        {
          "latitude": 35.62984570420452,
          "longitude": -116.84215384823932
        },
        {
          "latitude": 35.55523919240562,
          "longitude": -116.83461877811952
        },
        {
          "latitude": 35.480702052044876,
          "longitude": -116.84312107874324
        },
        {
          "latitude": 35.408495625225484,
          "longitude": -116.86735902359025
        },
        {
          "latitude": 35.34080463691217,
          "longitude": -116.90655843937878
        },
        {
          "latitude": 35.27967195814059,
          "longitude": -116.95950067960908
        },
        {
          "latitude": 35.22693822000033,
          "longitude": -117.02456284968261
        },
        {
          "latitude": 35.184187907213456,
          "longitude": -117.09976871063921
        },
        {
          "latitude": 35.15270332909477,
          "longitude": -117.18284855647319
        },
        {
          "latitude": 35.13342762012634,
          "longitude": -117.27130629006498
        },
        {
          "latitude": 35.12693766919082,
          "longitude": -117.362491895385
        }
      ]
    },
    "eventID": "ci38457511",
    "minDepth": -10.0,
    "maxDepth": 24.0,
    "minMag": 2.5,
    "startTime": 1561778393040,
    "endTime": 1564802393040,
    "magComplete": 3.5
  }
}
```

