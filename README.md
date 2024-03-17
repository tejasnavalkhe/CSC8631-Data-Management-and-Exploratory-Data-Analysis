# FutureLearn

To Start the project, follow the following steps-

- To load FutureLearn project, you'll first need to `setwd()` into the directory where this README file is located.
- Then you need to run the following two lines of R code:
  `library('ProjectTemplate')`
  `load.project()`

After you enter the second line of code, you'll see a series of automated
messages as ProjectTemplate goes about doing its work. This work involves:

- Reading in the global configuration file contained in `config`.
- Loading any R packages you listed in the configuration file.
- Reading in any datasets stored in `data` or `cache`.
- Preprocessing your data using the files in the `munge` directory.

* Once that's done, you can execute any code you'd like. File name `analysis.R` in the `src` directory.
* To generate report, you'll need to run following commands in the terminal -

`library('ProjectTemplate')`
`load.project()`
During this step, all files in `munge` directory will run automatically which has preprocessing of the data.

### Location of the deliverables

- cache: This directory automatically stores all cache files or data.
- config: The `global.dcf` file contains all project-related configuration settings.
- data: This folder is designated for storing all project-related data files.
- graphs: All project-related graphs should be saved in this directory.
- lib: The `helper.R` file resides in this folder, allowing the creation of custom functions for use in files stored in the `src` directory.
- logs: Git log file is stored in this location.
- munge: This folder houses all files related to data preprocessing.
- reports: The main final report and reflective report are stored in this directory.
- src: Files pertaining to analysis and exploratory data analysis (EDA) are stored in this folder.

---

This is my submitted code for module CSC8631: Data Management and Exploratory Data Analysis at Newcastle University as Student in Masters Data Science (With Specialisation in Artificial Intelligence)

_NOTE: Please be aware that I have shared this code publicly to exhibit my work. Kindly refrain from directly copying and pasting it for your coursework, as doing so may lead to issues with plagiarism._
