# ETAS Configuration for ComCat M4.87 (ci39126079), 4.7 Days After, Point Sources, kCOV=1.5

|   | ComCat M4.87 (ci39126079), 4.7 Days After, Point Sources, kCOV=1.5 |
|-----|-----|
| Num Simulations | 100000 |
| Start Time | 2020/04/08 17:48:08 UTC |
| Start Time Epoch Milliseconds | 1586368088968 |
| Duration | 10 Years |
| Includes Spontaneous? | false |
| Trigger Ruptures | 23 Trigger Ruptures |
|   | First: M4.87 at 2020/04/04 01:53:18 UTC |
|   | Last: M2.63 at 2020/04/08 04:03:49 UTC |
|   | Largest: M4.87 at 2020/04/04 01:53:18 UTC |
| Trigger Ruptures | *(none)* |
| Config Generated With | u3etas_comcat_event_config_builder.sh --event-id ci39126079 --radius 10 --mag-complete 2.5 --num-simulations 100000 --days-before 7 --end-now --etas-k-cov 1.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 4.5 --hpc-site USC_HPC --nodes 32 --hours 24 |

## Table Of Contents

* [Trigger Rupture Fault Map](#trigger-rupture-fault-map)
* [Fault Distances To Triggers](#fault-distances-to-triggers)
* [ci39126079 Possible Finite Rupture Subsection Mappings](#ci39126079-possible-finite-rupture-subsection-mappings)
* [JSON Input File](#json-input-file)

## Trigger Rupture Fault Map
*[(top)](#table-of-contents)*

![Map](./trigger_rup_fault_map.png)

## Fault Distances To Triggers
*[(top)](#table-of-contents)*

| Section Name | Strike, Dip, Rake | # Hypos In Poly | Max Mag w/ Hypo In Poly | # Surfs In Poly | Max Mag w/ Surf In Poly | Min Dist To Any (km) | Min Poly Dist To Any (km) | Min Dist To Largest (km) | Min Poly Dist To Largest (km) |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| San Jacinto (Anza) rev | 126, 90, 180 | 17 | 3.66 | 17 | 3.66 | 0.323 | 0.000 | 0.771 | 0.516 |
| San Jacinto (Coyote Creek) | 133, 90, 180 | 8 | 4.87 | 8 | 4.87 | 3.377 | 0.000 | 3.961 | 0.000 |
| San Jacinto (Clark) rev | 124, 90, 180 | 7 | 4.87 | 7 | 4.87 | 0.323 | 0.000 | 0.721 | 0.000 |

## ci39126079 Possible Finite Rupture Subsection Mappings
*[(top)](#table-of-contents)*

This gives any possible finite rupture surface subsection mappings. In the plot below, potentially suggested subsections are outlined in green, and all subsections for which any of this rupture is within the fault polygon are in gray. Suggested sections are those for which the area of the input rupture within the polygon is at least 50.0 % of the sub section area

Overlapping polygons are removed according to the mean distance of the actual subsection surface, with the polygons of closer sections masking out the polygons of further sections

As this is a point source, there will be no matches, but sections within 25km will be listed

![Map](./finite_rup_subsection_mappings_ci39126079.png)

| Section Index | Section Name | Suggested Match? | Section Area | Sect Distance To Rup | Hypocenter in Polygon? |
|-----|-----|-----|-----|-----|-----|
| 2155 | San Jacinto (Anza) rev, Subsection 2 | no | 125.44 | mean=27.81 [23.31 32.85] [km] | no |
| 2156 | San Jacinto (Anza) rev, Subsection 3 | no | 125.44 | mean=20.31 [15.62 25.62] [km] | no |
| 2157 | San Jacinto (Anza) rev, Subsection 4 | no | 125.44 | mean=13.03 [7.93 18.77] [km] | no |
| 2158 | San Jacinto (Anza) rev, Subsection 5 | no | 125.44 | mean=6.72 [0.44 12.91] [km] | no |
| 2165 | San Jacinto (Clark) rev, Subsection 0 | no | 118.01 | mean=5.98 [0.65 11.53] [km] | *yes* |
| 2166 | San Jacinto (Clark) rev, Subsection 1 | no | 118.01 | mean=12.25 [7.29 17.58] [km] | no |
| 2167 | San Jacinto (Clark) rev, Subsection 2 | no | 118.01 | mean=19.56 [15.05 24.49] [km] | no |
| 2168 | San Jacinto (Clark) rev, Subsection 3 | no | 118.01 | mean=27.03 [22.68 31.78] [km] | no |
| 2171 | San Jacinto (Coyote Creek), Subsection 0 | no | 113.67 | mean=7.14 [3.95 12.56] [km] | *yes* |
| 2172 | San Jacinto (Coyote Creek), Subsection 1 | no | 113.67 | mean=11.64 [7.11 17.2] [km] | no |
| 2173 | San Jacinto (Coyote Creek), Subsection 2 | no | 113.67 | mean=18.08 [13.81 23.18] [km] | no |
| 2174 | San Jacinto (Coyote Creek), Subsection 3 | no | 113.67 | mean=24.92 [20.84 29.68] [km] | no |

## JSON Input File
*[(top)](#table-of-contents)*

```
{
  "numSimulations": 100000,
  "duration": 10.0,
  "startTimeMillis": 1586368088968,
  "includeSpontaneous": false,
  "randomSeed": 1586368088193,
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
  "simulationName": "ComCat M4.87 (ci39126079), 4.7 Days After, Point Sources, kCOV\u003d1.5",
  "numRetries": 3,
  "outputDir": "${ETAS_SIM_DIR}/2020_04_08-ComCatM4p87_ci39126079_4p7DaysAfter_PointSources_kCOV1p5",
  "treatTriggerCatalogAsSpontaneous": false,
  "triggerRuptures": [
    {
      "occurrenceTimeMillis": 1585965198920,
      "comcatEventID": "ci39126079",
      "mag": 4.87,
      "latitude": 33.4895,
      "longitude": -116.50633330000001,
      "depth": 10.45
    },
    {
      "occurrenceTimeMillis": 1585965262570,
      "comcatEventID": "ci39126087",
      "mag": 3.76,
      "latitude": 33.49316670000001,
      "longitude": -116.50500000000001,
      "depth": 10.31
    },
    {
      "occurrenceTimeMillis": 1585965335800,
      "comcatEventID": "ci39126103",
      "mag": 3.07,
      "latitude": 33.4801667,
      "longitude": -116.49033329999999,
      "depth": 9.21
    },
    {
      "occurrenceTimeMillis": 1585965417670,
      "comcatEventID": "ci39126135",
      "mag": 2.57,
      "latitude": 33.496,
      "longitude": -116.50666669999998,
      "depth": 10.78
    },
    {
      "occurrenceTimeMillis": 1585965900170,
      "comcatEventID": "ci39126263",
      "mag": 3.66,
      "latitude": 33.4946667,
      "longitude": -116.5153333,
      "depth": 10.28
    },
    {
      "occurrenceTimeMillis": 1585966584880,
      "comcatEventID": "ci39126455",
      "mag": 2.55,
      "latitude": 33.4966667,
      "longitude": -116.5198333,
      "depth": 10.26
    },
    {
      "occurrenceTimeMillis": 1585969163280,
      "comcatEventID": "ci39126951",
      "mag": 3.11,
      "latitude": 33.5011667,
      "longitude": -116.51900000000002,
      "depth": 10.37
    },
    {
      "occurrenceTimeMillis": 1585973242120,
      "comcatEventID": "ci39127679",
      "mag": 3.6,
      "latitude": 33.4913333,
      "longitude": -116.51883329999998,
      "depth": 9.62
    },
    {
      "occurrenceTimeMillis": 1585977155150,
      "comcatEventID": "ci39128103",
      "mag": 3.46,
      "latitude": 33.4921667,
      "longitude": -116.51183330000002,
      "depth": 9.85
    },
    {
      "occurrenceTimeMillis": 1586000957950,
      "comcatEventID": "ci39129687",
      "mag": 2.81,
      "latitude": 33.4978333,
      "longitude": -116.5191667,
      "depth": 9.96
    },
    {
      "occurrenceTimeMillis": 1586104067340,
      "comcatEventID": "ci39134127",
      "mag": 2.62,
      "latitude": 33.5071667,
      "longitude": -116.51900000000002,
      "depth": 13.14
    },
    {
      "occurrenceTimeMillis": 1586120864910,
      "comcatEventID": "ci39134871",
      "mag": 3.49,
      "latitude": 33.5036667,
      "longitude": -116.5278333,
      "depth": 10.53
    },
    {
      "occurrenceTimeMillis": 1586123663660,
      "comcatEventID": "ci39135327",
      "mag": 2.7,
      "latitude": 33.5015,
      "longitude": -116.52599999999998,
      "depth": 11.1
    },
    {
      "occurrenceTimeMillis": 1586126089700,
      "comcatEventID": "ci39135567",
      "mag": 2.64,
      "latitude": 33.498,
      "longitude": -116.496,
      "depth": 12.65
    },
    {
      "occurrenceTimeMillis": 1586126238820,
      "comcatEventID": "ci39135575",
      "mag": 3.5,
      "latitude": 33.4961667,
      "longitude": -116.49616669999999,
      "depth": 13.25
    },
    {
      "occurrenceTimeMillis": 1586128318930,
      "comcatEventID": "ci39135751",
      "mag": 2.6,
      "latitude": 33.4976667,
      "longitude": -116.5215,
      "depth": 10.39
    },
    {
      "occurrenceTimeMillis": 1586305849230,
      "comcatEventID": "ci39141591",
      "mag": 3.54,
      "latitude": 33.4985,
      "longitude": -116.52533329999999,
      "depth": 9.98
    },
    {
      "occurrenceTimeMillis": 1586306156820,
      "comcatEventID": "ci39141695",
      "mag": 3.27,
      "latitude": 33.500666700000004,
      "longitude": -116.5236667,
      "depth": 10.28
    },
    {
      "occurrenceTimeMillis": 1586306216480,
      "comcatEventID": "ci39141711",
      "mag": 2.55,
      "latitude": 33.4941667,
      "longitude": -116.51450000000001,
      "depth": 8.71
    },
    {
      "occurrenceTimeMillis": 1586307614260,
      "comcatEventID": "ci39141967",
      "mag": 3.22,
      "latitude": 33.4981667,
      "longitude": -116.5228333,
      "depth": 10.27
    },
    {
      "occurrenceTimeMillis": 1586314417320,
      "comcatEventID": "ci39142391",
      "mag": 2.64,
      "latitude": 33.499,
      "longitude": -116.522,
      "depth": 10.37
    },
    {
      "occurrenceTimeMillis": 1586318469210,
      "comcatEventID": "ci39142551",
      "mag": 2.6,
      "latitude": 33.50183330000001,
      "longitude": -116.5208333,
      "depth": 10.01
    },
    {
      "occurrenceTimeMillis": 1586318629240,
      "comcatEventID": "ci39142559",
      "mag": 2.63,
      "latitude": 33.4988333,
      "longitude": -116.5225,
      "depth": 10.38
    }
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
  "etas_k_cov": 1.5,
  "configCommand": "u3etas_comcat_event_config_builder.sh --event-id ci39126079 --radius 10 --mag-complete 2.5 --num-simulations 100000 --days-before 7 --end-now --etas-k-cov 1.5 --finite-surf-shakemap --finite-surf-shakemap-min-mag 4.5 --hpc-site USC_HPC --nodes 32 --hours 24",
  "configTime": 1586368088193,
  "comcatMetadata": {
    "region": {
      "centerLatitude": 33.4895,
      "centerLongitude": -116.50633330000001,
      "radius": 10.0
    },
    "eventID": "ci39126079",
    "minDepth": -10.0,
    "maxDepth": 24.0,
    "minMag": 2.5,
    "startTime": 1585360398920,
    "endTime": 1586368087968,
    "magComplete": 2.5
  }
}
```

