rm -r out/current; python calculate_stats.py --output out/current loop && python calculate_stats.py --output out/current aggregate && python calculate_stats.py --output out/current invert && python traceable_percentages.py > traceable_percentages.csv && diff traceable_percentages.csv.expected traceable_percentages.csv && echo 'Success'