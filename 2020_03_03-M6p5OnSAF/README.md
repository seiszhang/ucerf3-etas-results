# M6.5OnSAF Results

|   | M6.5OnSAF |
|-----|-----|
| Num Simulations | 25000 |
| Start Time | 2020/01/01 00:00:00 UTC |
| Start Time Epoch Milliseconds | 1577836800000 |
| Duration | 1 Year |
| Includes Spontaneous? | false |
| Trigger Ruptures | *(none)* |
| Config Generated With | u3etas_config_builder.sh --start-year 2020 --num-simulations 25000 --duration-years 1 --magnitude 6.5 --latitude 34.695 --depth 5 --longitude -118.5 --name M6.5OnSAF --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec |

## Table Of Contents

* [JSON Input File](#json-input-file)


## JSON Input File
*[(top)](#table-of-contents)*

```
{
  "numSimulations": 25000,
  "duration": 1.0,
  "startYear": 2020,
  "includeSpontaneous": false,
  "randomSeed": 1583281188645,
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
  "simulationName": "M6.5OnSAF",
  "numRetries": 3,
  "outputDir": "${ETAS_SIM_DIR}/2020_03_03-M6p5OnSAF",
  "treatTriggerCatalogAsSpontaneous": false,
  "triggerRuptures": [
    {
      "mag": 6.5,
      "latitude": 34.695,
      "longitude": -118.50000000000001,
      "depth": 5.0
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
  "configCommand": "u3etas_config_builder.sh --start-year 2020 --num-simulations 25000 --duration-years 1 --magnitude 6.5 --latitude 34.695 --depth 5 --longitude -118.5 --name M6.5OnSAF --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec",
  "configTime": 1583281188645
}
```

