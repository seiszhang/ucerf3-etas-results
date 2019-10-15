# ComCat M4.71 (nc73292360), Point Sources

No simulation results are yet available, but pre-simulation analysis plots are available [here](config_input_plots/README.md).

## JSON Input File
```
{
  "numSimulations": 100000,
  "duration": 10.0,
  "startTimeMillis": 1571168551550,
  "includeSpontaneous": false,
  "randomSeed": 1571173106462,
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
  "simulationName": "ComCat M4.71 (nc73292360), Point Sources",
  "numRetries": 3,
  "outputDir": "${ETAS_SIM_DIR}/2019_10_15-ComCatM4p71_nc73292360_PointSources",
  "triggerRuptures": [
    {
      "occurrenceTimeMillis": 1570612516640,
      "comcatEventID": "nc73289220",
      "mag": 3.25,
      "latitude": 37.3818333,
      "longitude": -121.73283330000001,
      "depth": 9.27
    },
    {
      "occurrenceTimeMillis": 1571009527260,
      "comcatEventID": "nc73291290",
      "mag": 2.87,
      "latitude": 37.2589989,
      "longitude": -121.51066590000002,
      "depth": 7.8
    },
    {
      "occurrenceTimeMillis": 1571016328610,
      "comcatEventID": "nc73291345",
      "mag": 2.56,
      "latitude": 37.2593346,
      "longitude": -121.50966639999999,
      "depth": 7.97
    },
    {
      "occurrenceTimeMillis": 1571117622810,
      "comcatEventID": "nc73291880",
      "mag": 4.46,
      "latitude": 37.938,
      "longitude": -122.05700000000002,
      "depth": 13.97
    },
    {
      "occurrenceTimeMillis": 1571134783260,
      "comcatEventID": "nc73292185",
      "mag": 2.68,
      "latitude": 36.5639992,
      "longitude": -121.1555023,
      "depth": 2.69
    },
    {
      "occurrenceTimeMillis": 1571168550550,
      "comcatEventID": "nc73292360",
      "mag": 4.71,
      "latitude": 36.649334,
      "longitude": -121.2740021,
      "depth": 9.72
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
  "configCommand": "u3etas_comcat_event_config_builder.sh --event-id nc73292360 --region 38.5,-122.75,36.25,-120.5 --num-simulations 100000 --days-before 7 --hpc-site USC_HPC --nodes 36 --hours 24 --queue scec",
  "configTime": 1571173106462,
  "comcatMetadata": {
    "region": {
      "minLatitude": 36.249999999999,
      "maxLatitude": 38.500000000001,
      "minLongitude": -122.750000000001,
      "maxLongitude": -120.49999999999902
    },
    "eventID": "nc73292360",
    "minDepth": -10.0,
    "maxDepth": 24.0,
    "minMag": 2.5,
    "startTime": 1570563750550,
    "endTime": 1571168550551
  }
}
```

