# Daumen Scenario

Daumen Scenario is a SUMO model developed for a bachelor’s thesis to compare Park-and-Ride (P+R) locations along the B26, A672, and B42 commuter corridors entering Darmstadt. A sensor-calibrated baseline and three 20% rerouting scenarios are used to assess traffic and emission impacts. The model covers 86,400 seconds (24 hours); the visualisations show the first 39,600 seconds (11 hours, hourly intervals 0–10).

## Scenarios

| Scenario | Intervention                                      |
| -------- | ------------------------------------------------- |
| Baseline | No P+R intervention                               |
| B26      | 20% of eligible commuter vehicles rerouted to P+R |
| A672     | 20% of eligible commuter vehicles rerouted to P+R |
| B42      | 20% of eligible commuter vehicles rerouted to P+R |

P+R guidance is active from 06:00 to 10:00. Except for the P+R location, trigger edge, and access route, the scenario settings remain unchanged.

## Data and Model

The OSM-derived network was refined using official road information. Traffic demand and the baseline model were calibrated using 2023 observations from main 23 fixed traffic sensors in Darmstadt, 6 External Highway (Autobahn) and 4 Federal Highway BASt traffic counts. The model was prepared with Eclipse SUMO 1.27.0.

## How to Run

Extract the downloaded archive and run the included `.bat` file.

In case only Baseline-Scenario is required, unzip the folder and run `.sumocfg` file.

## Visualisation

The `visualisation` directory contains the following materials:

| Folder                    | Description                                                                                    |
| ------------------------- | ---------------------------------------------------------------------------------------------- |
| `Location_PnR`            | Maps and screenshots of the P+R candidate locations along the B26, A672, and B42 corridors     |
| `Result_PnR`              | Figures summarising the traffic and emission results of the P+R scenarios                      |
| `before_after`            | Comparisons between the calibrated baseline and the P+R scenarios                              |
| `real_sensor_data_vs_sim` | Calibration and validation plots comparing observed sensor data with simulated traffic volumes |

## Data Sources and Attribution

* Road network: [OpenStreetMap](https://www.openstreetmap.org/copyright), extracted using [Overpass Turbo](https://overpass-turbo.eu/). © OpenStreetMap contributors, licensed under ODbL 1.0.
* Urban traffic counts: [Darmstadt Raw Traffic Data 2023](https://opendata.darmstadt.de/dataset/verkehrsdaten-im-rohformat-2023), providing one-minute observations from fixed induction sensors under `dl-by-de/2.0`.
* Regional traffic counts: [BASt automatic counting stations 2023](https://www.bast.de/DE/Themen/Digitales/HF_1/Massnahmen/verkehrszaehlung/Daten/2023_1/Jawe2023.html) and [Manual Road Traffic Census 2021](https://www.bast.de/DE/Publikationen/Statistik/Verkehrsdaten/Manuelle-Zaehlung.html).
* Travel demand and spatial data: [Darmstadt employment data](https://opendata.darmstadt.de/dataset/besch%C3%A4ftigte), [statistical districts](https://opendata.darmstadt.de/dataset/statistische-bezirke-darmstadt), regional commuter statistics, and [Geobasisdaten Hessen](https://geodaten.hessen.de/) ATKIS data.
* Public transport and P+R locations: [RMV Open Data](https://www.rmv.de/c/de/fahrplan/fahrplaene/service-fuer-entwickler) and [Parken in Hessen](https://parken.hessen.de/).

## Modeling Note

The 20% rerouting rate is a controlled scenario parameter for comparing locations, not a forecast of actual P+R demand. Vehicles reaching a P+R facility are removed from the road network; their onward public-transport journeys are not simulated.

## Citation

Jung, Sejin (2026). *Daumen-Scenario: Evaluation of Park-and-Ride Locations for Commuter Traffic in Darmstadt – Integrating GIS Spatial Analysis and Mesoscopic Traffic Simulation in SUMO*. Bachelor’s thesis, Technische Universität Darmstadt.
