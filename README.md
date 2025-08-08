# Hunter-Data-Processing-Project
This project contains a series of Bash scripts used to extract, transform, clean, analyze, and partition job vacancy data from HeadHunter (hh.ru). Each exercise focuses on a specific part of the data pipeline.


## 📁 Project Structure
```
src/
├── ex00/
│ ├── hh.json # Raw vacancy data
│ └── hh.sh # Script to fetch/update the JSON file
├── ex01/
│ ├── filter.jq # JQ filter used for data extraction
│ ├── hh.csv # Converted CSV data
│ └── json_to_csv.sh # Converts JSON to CSV
├── ex02/
│ ├── hh_sorted.csv # Sorted CSV by defined criteria
│ └── sorter.sh # Sorting script
├── ex03/
│ ├── hh_positions.csv # Cleaned job titles
│ └── cleaner.sh # Cleans the dataset
├── ex04/
│ ├── hh_uniq_positions.csv # Unique job titles with counts
│ └── counter.sh # Counts occurrences of each position
├── ex05/
│ ├── concatenator.sh # Merges multiple CSVs
│ └── partitioner.sh # Splits CSV into parts
```

## 🛠️ Requirements

- Bash
- `jq` (for JSON parsing)
- Standard Unix utilities (`sort`, `uniq`, `cut`, etc.)

To install `jq`:

```bash
sudo apt-get install jq
```
🚀 Usage

Run each step from the src/ directory.
Step 0: Download the data
bash ex00/hh.sh
Step 1: Convert JSON to CSV
bash ex01/json_to_csv.sh
Step 2: Sort the CSV
bash ex02/sorter.sh
Step 3: Clean job titles
bash ex03/cleaner.sh
Step 4: Count unique job titles
bash ex04/counter.sh
Step 5: Concatenate and partition CSVs
bash ex05/concatenator.sh
bash ex05/partitioner.sh

📌 Notes
    Make sure scripts are executable:

chmod +x ex*/*.sh
    Each script outputs a new CSV file to preserve intermediate results.

🧑‍💻 Author

Sevinch Djabbarova

Feel free to connect with me or contribute improvements!
