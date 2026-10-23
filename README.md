# Daumen Scenario

Daumen Scenario is a SUMO model developed for a bachelor’s thesis to compare Park-and-Ride (P+R) locations along the B26, A672, and B42 commuter corridors entering Darmstadt. A sensor-calibrated baseline and three 20% rerouting scenarios are used to assess traffic and emission impacts. The model covers 86,400 seconds (24 hours); the visualisations show the first 39,600 seconds (11 hours, hourly intervals 0–10).

## Scenarios

| Scenario | Intervention                                      | Deverted Vehicles | 
| -------- | ------------------------------------------------- | ----------------- |
| Baseline | No P+R intervention                               |                   |
| B26      | 20% of eligible commuter vehicles rerouted to P+R | 1,524             |
| A672     | 20% of eligible commuter vehicles rerouted to P+R | 1,432             |
| B42      | 20% of eligible commuter vehicles rerouted to P+R | 1,150             |
<img width="1087" height="681" alt="image" src="https://github.com/user-attachments/assets/6b1a9cd5-81ac-45a3-94f9-60a724be7890" />

P+R guidance is active from 06:00 to 10:00. Except for the P+R location, trigger edge, and access route, the scenario settings remain unchanged.

Despite the variation at number of deverted vehicles each scenarios, there was negligible difference in the actual number of vehicles passing through the edges due to dynamic rerouting function of SUMO.

## Data and Model

The OSM-derived network was refined using official road information. Traffic demand and the baseline model were calibrated using 2023 observations from main 23 fixed traffic sensors in Darmstadt, 6 External Highway (Autobahn) and 4 Federal Highway BASt traffic counts. The model was prepared with Eclipse SUMO 1.27.0.
<img width="2191" height="987" alt="image" src="https://github.com/user-attachments/assets/65512e67-b80d-47bf-95f9-75b0c60bf6aa" />

Representative Results
<img width="1541" height="662" alt="image" src="https://github.com/user-attachments/assets/e61bdf6e-1667-4ead-abeb-c0def3f52290" />

## How to Run

Requirement to run this Scenario is Sumo, and you can download it from this [Link](https://sumo.dlr.de/docs/Downloads.php).

Extract the downloaded archive and run the included `.bat` file.

In case only Baseline-Scenario is required, unzip the folder and run `.sumocfg` file.

## Calibration
Locations of Loop detectors that used for calibration (Blue)

<img width="4961" height="7016" alt="sensors" src="https://github.com/user-attachments/assets/defbfc4f-7ea1-47b5-a2bd-e980cdf0763b" />

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
* Public transport and P+R locations: [RMV Open Data](https://www.rmv.de/c/de/fahrplan/fahrplaene/service-fuer-entwickler)

## Result

Traffic operation metrics:
<img width="2036" height="745" alt="image" src="https://github.com/user-attachments/assets/604ebaef-8c87-4904-a09a-4e8fdda18977" />

Enviromental emissions:
<img width="2052" height="758" alt="image" src="https://github.com/user-attachments/assets/dab7b4aa-1f69-41a6-95d9-3436a7d293a9" />


## Modeling Note

The 20% rerouting rate is a controlled scenario parameter for comparing locations, not a forecast of actual P+R demand. Vehicles reaching a P+R facility are removed from the road network; their onward public-transport journeys are not simulated.

## Citation

Jung, Sejin (2026). *Evaluation of Park-and-Ride Locations for Commuter Traffic in Darmstadt – The DaUMen Scenario: Integrating GIS Spatial Analysis and Mesoscopic Traffic Simulation*. Bachelor’s thesis, Technische Universität Darmstadt.
