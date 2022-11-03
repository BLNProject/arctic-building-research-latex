
cd "C:\Users\LSTK_GRAPHIC\YandexDisk\PRJ_cloud\2022_RES_ArcticBuilding\01_WIP\arctic_building_latex\"

set local
@REM REM Preparing Timestamp Information
set year=%date:~6,4%
set month=%date:~3,2%
set day=%date:~0,2%
set hour=%time:~0,2%
@REM REM Replace leading space with zero
if “%hour:~0,1%” ==” ” set hour=0%hour:~1,1%
set minute=%time:~3,2%
set seconds=%time:~6,2%
set timestamp=%year%%month%%day%%hour%%minute%%seconds%
set timestamp=%year%.%month%.%day%_%hour%.%minute%
@REM set data_file=C:\%timestamp%.txt


@REM pandoc --citeproc --bibliography=main.bib .\2022_Отчет_НИР_ДомостроениеАрктики.tex -f latex -t docx -o  %timestamp%_Отчет_НИР_ДомостроениеАрктики.docx
pandoc --citeproc --bibliography=./bibliography/2022/common_energyEfficiency.bib --bibliography=./bibliography/2022/research_arcticbuildtech_applicationTechnologies.bib --bibliography=./bibliography/2022/research_arcticbuildtech_sciAndResearches.bib --bibliography=./bibliography/2022/research_arcticbuildtech_ArcticGovernmentsAndPrograms.bib --bibliography=./bibliography/2022/common_laws.bib --bibliography=./bibliography/2022/institute_iti.bib --bibliography=./bibliography/2022/institute_marchi.bib --bibliography=./bibliography/2022/research_arcticbuildtech_urbanPlanningTexts.bib --reference-links --reference-doc=.\docx_etalon_report.docx ".\2022_Отчет_НИР_ДомостроениеАрктики.tex" -f latex -t docx -o  "%timestamp%_Отчет_НИР_ДомостроениеАрктики.docx"
@REM pandoc --reference-links --reference-doc=.\docx_etalon.docx "2022_Отчет_НИР_ДомостроениеАрктики.tex" -f latex -t docx -o  "%timestamp%_Отчет_НИР_ДомостроениеАрктики.docx"

move /y "%timestamp%_Отчет_НИР_ДомостроениеАрктики.docx" "C:\Users\LSTK_GRAPHIC\YandexDisk\PRJ_cloud\2022_RES_ArcticBuilding\02_SHARED"

