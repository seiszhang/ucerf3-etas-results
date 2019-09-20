# ETAS Configuration for ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface, Field-Verified

|   | ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface, Field-Verified |
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
| Config Generated With | u3etas_comcat_event_config_builder.sh --event-id ci38457511 --num-simulations 100000 --days-before 7 --days-after 28 --mag-complete 3.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 5 --kml-surf /home/kevin/OpenSHA/UCERF3/etas/ridgecrest_plots/ridgecrest.kmz --kml-surf-lower-depth 12 --kml-surf-name Field --kml-surf-name-contains --name-add Field-Verified --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec |

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
| Little Lake | 327, 90, 180 | 348 | 5.5 | 349 | 7.1 | 0.202 | 0.000 | 0.202 | 0.000 | 13.471 | 1.469 |
| Garlock (Central) | 71, 90, 0 | 147 | 4.73 | 148 | 7.1 | 0.225 | 0.000 | 4.706 | 0.000 | 22.766 | 10.797 |
| So Sierra Nevada | 2, 50, -90 | 110 | 4.62 | 110 | 4.62 | 1.097 | 0.000 | 2.006 | 1.025 | 16.191 | 15.188 |
| Ash Hill | 162, 90, 180 | 24 | 3.57 | 24 | 3.57 | 0.088 | 0.000 | 33.561 | 21.600 | 35.690 | 25.242 |
| Panamint Valley | 334, 90, -150 | 17 | 3.57 | 17 | 3.57 | 6.249 | 0.000 | 29.309 | 17.386 | 34.350 | 22.425 |
| Blackwater | 323, 90, 180 | 2 | 3.54 | 2 | 3.54 | 5.396 | 0.000 | 12.517 | 7.977 | 29.622 | 27.613 |
| Tank Canyon | 189, 50, -90 | 1 | 3.0 | 1 | 3.0 | 1.252 | 0.000 | 8.074 | 8.068 | 17.039 | 16.895 |
| Sierra Nevada  (No Extension) | 344, 50, -90 | 0 |  | 0 |  | 5.696 | 1.331 | 39.260 | 39.217 | 58.680 | 58.391 |
| Owens Valley | 346, 90, 180 | 0 |  | 0 |  | 13.143 | 7.068 | 49.023 | 47.970 | 68.299 | 66.819 |
| Lenwood-Lockhart-Old Woman Springs | 301, 90, 180 | 0 |  | 0 |  | 18.221 | 16.222 | 43.105 | 32.568 | 59.786 | 48.595 |
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
| 0 | Airport Lake, Subsection 0 | *yes* | 120.19 | 521.19 | 487.18 | 4.05 | mean=3.59 [0.29 7.83] [km] | *yes* |
| 1 | Airport Lake, Subsection 1 | *yes* | 120.19 | 126.79 | 126.79 | 1.05 | mean=2.16 [0.21 6.07] [km] | no |
| 2 | Airport Lake, Subsection 2 | *yes* | 120.19 | 91.25 | 91.25 | 0.76 | mean=2.42 [0.21 6.23] [km] | no |
| 602 | Garlock (Central), Subsection 8 | no | 61.94 | 6.06 | 6.06 | 0.1 | mean=11.47 [10.6 12.58] [km] | no |
| 603 | Garlock (Central), Subsection 9 | *yes* | 61.94 | 32.34 | 32.34 | 0.52 | mean=9.81 [8.22 10.7] [km] | no |
| 604 | Garlock (Central), Subsection 10 | no | 61.94 | 4.78 | 4.78 | 0.08 | mean=7 [5.55 8.5] [km] | no |
| 605 | Garlock (Central), Subsection 11 | *yes* | 61.94 | 251.61 | 251.61 | 4.06 | mean=5.02 [4.72 5.79] [km] | no |
| 606 | Garlock (Central), Subsection 12 | *yes* | 61.94 | 37.07 | 37.07 | 0.6 | mean=5.8 [4.83 7.42] [km] | no |
| 1126 | Little Lake, Subsection 1 | no | 73.13 | 17.1 | 17.1 | 0.23 | mean=1.11 [0.48 2.7] [km] | no |
| 1127 | Little Lake, Subsection 2 | no | 73.13 | 34.01 | 34.01 | 0.47 | mean=2.14 [0.73 4.58] [km] | no |
| 1129 | Little Lake, Subsection 4 | no | 73.13 | 2.82 | 0 | 0 | mean=9.05 [8.82 9.53] [km] | no |

## JSON Input File
*[(top)](#table-of-contents)*

```
{
  "numSimulations": 100000,
  "duration": 10.0,
  "startTimeMillis": 1564802394040,
  "includeSpontaneous": false,
  "randomSeed": 1568835382413,
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
  "simulationName": "ComCat M7.1 (ci38457511), 28 Days After, KML Surface, ShakeMap Surface, Field-Verified",
  "numRetries": 3,
  "outputDir": "${ETAS_SIM_DIR}/2019_09_18-ComCatM7p1_ci38457511_28DaysAfter_KMLSurface_ShakeMapSurface_FieldVerified",
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
  "configCommand": "u3etas_comcat_event_config_builder.sh --event-id ci38457511 --num-simulations 100000 --days-before 7 --days-after 28 --mag-complete 3.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 5 --kml-surf /home/kevin/OpenSHA/UCERF3/etas/ridgecrest_plots/ridgecrest.kmz --kml-surf-lower-depth 12 --kml-surf-name Field --kml-surf-name-contains --name-add Field-Verified --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec",
  "configTime": 1568835382413,
  "comcatMetadata": {
    "region": {
      "border": [
        {
          "latitude": 35.13791803733396,
          "longitude": -117.4560533453681
        },
        {
          "latitude": 35.15719372991666,
          "longitude": -117.54451596497681
        },
        {
          "latitude": 35.188678282898366,
          "longitude": -117.6276004133117
        },
        {
          "latitude": 35.23142856478877,
          "longitude": -117.7028104596561
        },
        {
          "latitude": 35.28416226995795,
          "longitude": -117.76787627425676
        },
        {
          "latitude": 35.28637897537963,
          "longitude": -117.76979609926458
        },
        {
          "latitude": 35.28623450796661,
          "longitude": -117.7700104763165
        },
        {
          "latitude": 35.645205915207136,
          "longitude": -118.13961079720063
        },
        {
          "latitude": 35.645265738528806,
          "longitude": -118.13952230188455
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
          "latitude": 36.19555609493465,
          "longitude": -117.32548995364976
        },
        {
          "latitude": 36.19561685540872,
          "longitude": -117.32540007202489
        },
        {
          "latitude": 35.83416080827854,
          "longitude": -116.9569355934329
        },
        {
          "latitude": 35.83401411394884,
          "longitude": -116.95715327503513
        },
        {
          "latitude": 35.77473918578444,
          "longitude": -116.90645419594041
        },
        {
          "latitude": 35.70674213392462,
          "longitude": -116.86788403060827
        },
        {
          "latitude": 35.634335941914756,
          "longitude": -116.8444954327072
        },
        {
          "latitude": 35.55972942471374,
          "longitude": -116.83696002077956
        },
        {
          "latitude": 35.48519229044297,
          "longitude": -116.84546287764623
        },
        {
          "latitude": 35.412985880441845,
          "longitude": -116.86970225028182
        },
        {
          "latitude": 35.34529491762745,
          "longitude": -116.90890391369807
        },
        {
          "latitude": 35.28416226995795,
          "longitude": -116.96184914703525
        },
        {
          "latitude": 35.23142856478877,
          "longitude": -117.02691496163591
        },
        {
          "latitude": 35.188678282898366,
          "longitude": -117.10212500798032
        },
        {
          "latitude": 35.15719372991666,
          "longitude": -117.18520945631519
        },
        {
          "latitude": 35.13791803733396,
          "longitude": -117.27367207592391
        },
        {
          "latitude": 35.131428092085535,
          "longitude": -117.36486271064601
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

