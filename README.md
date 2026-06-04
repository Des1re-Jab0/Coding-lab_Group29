# Kenyatta National Hospital (KNH) — Digital Infrastructure

**Coding Lab — Group 29**

## Project Overview

A shell-scripting project that sets up, secures, analyzes, and archives the data
produced by the KNH medical sensor simulator (`hospital_system.py`). The engine
generates Heart Rate, Temperature, and Water Usage readings; our scripts manage
the data flow around it.

## Group Roles

| Member | Name                      | GitHub       | Role              | Contribution                                      |
| :----- | :------------------------ | :------      | :---------------- | :------------------------------------------------ |
| 1      | Akayesu Ingabire Benigne  | abenigne     | The Architect     | `hospital_admin.sh` — `initialize_system()`       |
| 2      | SHEJA Yannis              | Yannis-sheja | The Security Lead | `hospital_admin.sh` — `secure_data()`             |
| 3      | Sia Virginie Millimouno   | Virginie2026 | The Orchestrator  | `hospital_admin.sh` — `main()` execution logic    |
| 4      | MUNEZERO Marvella         | mmarvellio77 | The Archivist     | `hospital_archive.sh` — log rotation              |
| 5 & 6  | Desire De Dieu Manzi Jabo | Des1re-Jab0  | Group Lead        | `hospital_analysis.sh` — `process_vitals()`, `water_audit()` |

## How to Run

```bash
# Start / stop the data engine
python3 hospital_system.py start
python3 hospital_system.py stop

# Set up and secure the environment
bash hospital_admin.sh

# Analyze live data
bash hospital_analysis.sh

# Archive the logs
bash hospital_archive.sh
```

## Data Privacy

Per hospital policy, no actual patient data is committed to this repository.
The `active_logs/`, `archived_logs/`, and `reports/` folders are excluded
through `.gitignore`.
