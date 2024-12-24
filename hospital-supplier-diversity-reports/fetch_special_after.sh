
# 2021-supplier-diversity-individual-reports.zipped
if [ ! -f 2021-supplier-diversity-individual-reports.zip ]; then
    mv 2021-supplier-diversity-individual-reports.zipped \
       2021-supplier-diversity-individual-reports.zip
fi

# 2021-supplier-diversity-individual-reports.zip
if [ ! -d 2021-supplier-diversity-individual-reports ]; then
    mkdir 2021-supplier-diversity-individual-reports
    cd 2021-supplier-diversity-individual-reports
    unzip -q ../2021-supplier-diversity-individual-reports.zip
    cd ..
fi

# 2020-hospital-supplier-diversity-reports.zip
if [ ! -d 2020-hospital-supplier-diversity-reports ]; then
    mkdir 2020-hospital-supplier-diversity-reports
    cd 2020-hospital-supplier-diversity-reports
    unzip -q ../2020-hospital-supplier-diversity-reports.zip
    cd ..
fi

# 2021-system-regional-reports.zip
if [ ! -d 2021-system-regional-reports ]; then
    mkdir 2021-system-regional-reports
    cd 2021-system-regional-reports
    unzip -q ../2021-system-regional-reports.zip
    cd ..
fi

# 2022-supplier-diversity-individual-reports.zip
if [ ! -d 2022-supplier-diversity-individual-reports ]; then
    mkdir 2022-supplier-diversity-individual-reports
    cd 2022-supplier-diversity-individual-reports
    unzip -q ../2022-supplier-diversity-individual-reports.zip
    cd ..
fi

# 2022-system-regional-reports.zip
if [ ! -d 2022-system-regional-reports ]; then
    mkdir 2022-system-regional-reports
    cd 2022-system-regional-reports
    unzip -q ../2022-system-regional-reports.zip
    cd ..
fi

# 2022-hospital-supplier-diversity-individual-report-extract.csv
if [ ! -f 2022-hospital-supplier-diversity-individual-report-extract.zip ]; then
    mv 2022-hospital-supplier-diversity-individual-report-extract.csv \
       2022-hospital-supplier-diversity-individual-report-extract.zip
fi

# 2022-hospital-supplier-diversity-regional-report-extract.csv
if [ ! -f 2022-hospital-supplier-diversity-regional-report-extract.csv.zip ]; then
    mv 2022-hospital-supplier-diversity-regional-report-extract.csv \
       2022-hospital-supplier-diversity-regional-report-extract.zip
fi

# 2022-hospital-supplier-diversity-individual-report-extract.zip
if [ ! -d 2022-hospital-supplier-diversity-individual-report-extract ]; then
    mkdir 2022-hospital-supplier-diversity-individual-report-extract
    cd 2022-hospital-supplier-diversity-individual-report-extract
    unzip -q ../2022-hospital-supplier-diversity-individual-report-extract.zip
    cd ..
fi

# 2022-hospital-supplier-diversity-regional-report-extract.zip
if [ ! -d 2022-hospital-supplier-diversity-regional-report-extract ]; then
    mkdir 2022-hospital-supplier-diversity-regional-report-extract
    cd 2022-hospital-supplier-diversity-regional-report-extract
    unzip -q ../2022-hospital-supplier-diversity-regional-report-extract.zip
    cd ..
fi

